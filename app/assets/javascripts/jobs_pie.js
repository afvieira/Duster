var handleDonutChart = function() {
    "use strict";
    console.log("ola");
    var donutData = [{
        label: "Chrome",
        data: 35,
        color: purpleDark
    }, {
        label: "Firefox",
        data: 30,
        color: purple
    }, {
        label: "Safari",
        data: 15,
        color: purpleLight
    }, {
        label: "Opera",
        data: 10,
        color: blue
    }, {
        label: "IE",
        data: 5,
        color: blueDark
    }];
    $.plot('#donut-chart', donutData, {
        series: {
            pie: {
                innerRadius: 0.5,
                show: true,
                label: {
                    show: true
                }
            }
        },
        legend: {
            show: true
        }
    });

};

var request_statistics = function request_statistics() {
    var blue = '#348fe2',
        blueLight = '#5da5e8',
        blueDark = '#1993E4',
        aqua = '#49b6d6',
        aquaLight = '#6dc5de',
        aquaDark = '#3a92ab',
        green = '#00acac',
        greenLight = '#33bdbd',
        greenDark = '#008a8a',
        orange = '#f59c1a',
        orangeLight = '#f7b048',
        orangeDark = '#c47d15',
        dark = '#2d353c',
        grey = '#b6c2c9',
        purple = '#727cb6',
        purpleLight = '#8e96c5',
        purpleDark = '#5b6392',
        red = '#ff5b57';

    $.post('/ajax/service_provider_stats', function(res) {

        donut_data = [{
            label: "Engomadoria",
            data: Math.ceil((res.eng/Object.keys(res).length)*100) ,
            color: purpleDark
        }, {
            label: "Limpeza geral",
            data: Math.ceil((res.limp/Object.keys(res).length)*100),
            color: purple
        }, {
            label: "Refeição",
            data: Math.ceil((res.ref/Object.keys(res).length)*100),
            color: purpleLight
        }, {
            label: "Compras para o lar",
            data: Math.ceil((res.comp/Object.keys(res).length)*100),
            color: blue


        }];
        console.log(donut_data);
        $.plot("#donut-chart", donut_data, {
            series: {
                pie: {
                    innerRadius: 0.5,
                    show: true,
                    label: {
                        show: true
                    }
                }
            },
            legend: {
                show: true
            }
        });

    })
}

$(request_statistics);