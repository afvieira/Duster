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
            start: start,
            end: end,
            allDay: false
        }


        if (!isOverlapping(start, end)) {
            console.log(start);
            console.log(end);            
            calendar.fullCalendar('renderEvent', render_options, true);
            ajax_new_block(start,end);
        }
    }

    var ajax_new_block = function add_event_ajax(start, end){

    	$.post("/ajax/new_block/",{time_start:start, time_end: end});
    }


    var stop_resize_cb = function stop_resize_cb( event, jsEvent, ui, view){

        console.log(event);
    }


    var event_render = function event_render(event, element, view){
            console.log(event);
    }
    var user_events = [];

    var ajax_request_calendar = function ajax_request_calendar(){

        $.post("/ajax/schedule/", function(data){
            for(var key in data){
                if(data.hasOwnProperty(key)){

                    var even = {id: key,
                                title: "work",
                                 start: data[key].start_time,
                                 end: data[key].end_time
                                };
                user_events.push(even);
            }

            }
        });
    }


    console.log(user_events);
    var options = {
        events: user_events,
        header: header_options,
        defaultView: 'agendaWeek',
        allDaySlot: false,
        axisFormat: 'h:00',
        minTime: '08:00:00',
        maxTime: '21:00:00',
        columnFormat: 'dddd',
        slotMinutes: 60,
        slotEventOverlap: false,
        //Não estou a conseguir alterar o intervalo das horas
        selectable: true,
        editable: true,
        select: select_cb,
        eventColor: '#0099CC',
        eventResizeStop: stop_resize_cb


    }
    ajax_request_calendar();
    calendar.fullCalendar(options);
    //console.log(new Date())
    //calendar.fullCalendar('render_event',{id:20, start:'Wed, '})

});