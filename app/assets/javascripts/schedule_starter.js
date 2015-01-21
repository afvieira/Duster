$(document).ready(function() {

    calendar = $('#calendar');

    // i dont want any header
    var header_options = false;

    var isOverlapping = function isOverlapping(new_start, new_end) {
        var array = calendar.fullCalendar('clientEvents');
        for (i in array) {

            if (new_end >= array[i].start && new_start <= array[i].end) {
                return true;
            }
        }
        return false;
    }

    var select_cb = function select_cb(start, end, allDay, js_event) {

        render_options = {
            title: "Free to work",
            start: start,
            end: end,
            allDay: false
        }


        if (!isOverlapping(start, end)) {

            calendar.fullCalendar('renderEvent', render_options, true);
            ajax_new_block(start, end);
        }
    }

    var ajax_new_block = function add_event_ajax(start, end) {

        $.post("/ajax/new_block/", {
            time_start: start,
            time_end: end
        });
    }



    var ajax_block_resize = function ajax_block_resize(event) {
        content = {
            id: event.id,
            start: event.start,
            end: event.end
        };
        console.log(content);
        $.post("/ajax/block_resize/", content);
    }


    var resize_cb = function stop_resize_cb(event, jsEvent, ui, view) {
        ajax_block_resize(event);
    }




    var ajax_request_calendar = function ajax_request_calendar() {

        $.post("/ajax/schedule/",
            function(data) {
                for (var key in data) {
                    if (data.hasOwnProperty(key)) {
                        var even = {
                            id: key,
                            title: "Free to work",
                            start: data[key].start_time,
                            end: data[key].end_time,
                            allDay: false // this is required
                        };
                        calendar.fullCalendar('renderEvent', even, true);

                    }
                }
            });
    }


    var options = {
        header: header_options,
        defaultView: 'agendaWeek',
        allDaySlot: false,
        axisFormat: 'h:00',
        minTime: '08:00:00',
        maxTime: '21:00:00',
        columnFormat: 'dddd',
        slotMinutes: 60,
        slotEventOverlap: false,
        selectable: true,
        editable: true,
        select: select_cb,
        eventColor: '#0099CC',
        eventResize: resize_cb


    }

    ajax_request_calendar();
    calendar.fullCalendar(options)
});