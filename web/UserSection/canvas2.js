/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var ctx = document.getElementById("myChart2").getContext("2d");
// Creating Chart Class Object
var myChart = new Chart(ctx, {
    // Type of Chart - bar, line, pie, doughnut, radar, polarArea
    type: "bar",

    // The data for our dataset
    data: {
        // Data Labels
        labels: ["	Afghanistan", "	Malaysia", "	Bangladesh", "	Kazakhstan", "	Iran", "	Cambodia", "	Indonesia", "	India", "	Pakistan", "	Turkey", "	Sri Lanka", "	Nepal", "	Singapore", "	China", "	Uzbekistan", "	South Korea", "	Georgia", "	Qatar", "	Taiwan"],

        datasets: [
            // Data Set 1
            {
                //  Chart Label
                label: "Crime %",

                // Actual Data
                data: [76.97, 58.55, 63.82, 54.81, 48.91, 52.18, 46.06, 44.42, 44.18, 39.50, 40.23, 35.61, 31.53, 31.18, 28.62, 27.33, 20.50, 11.90, 15.26],

                // Background Color
                backgroundColor: [
                    "rgba(255, 99, 132, 0.5)",
                    "rgba(54, 162, 235, 0.5)",
                    "rgba(255, 206, 86, 0.5)",
                    "rgba(75, 192, 192, 0.5)",
                    "rgba(153, 102, 255, 0.5)",
                    "rgba(255, 159, 64, 0.5)",
                    "rgba(255, 99, 132, 0.5)",
                    "rgba(54, 162, 235, 0.5)",
                    "rgba(255, 206, 86, 0.5)",
                    "rgba(75, 192, 192, 0.5)",
                    "rgba(153, 102, 255, 0.5)",
                    "rgba(255, 159, 64, 0.5)",
                    "rgba(255, 99, 132, 0.5)",
                    "rgba(54, 162, 235, 0.5)",
                    "rgba(255, 206, 86, 0.5)",
                    "rgba(75, 192, 192, 0.5)",
                    "rgba(153, 102, 255, 0.5)",
                    "rgba(255, 159, 64, 0.5)",
                    "rgba(75, 192, 192, 0.5)",

                ],

                // Border Color
                borderColor: [
                    "rgba(255, 99, 132, 1)",
                    "rgba(54, 162, 235, 1)",
                    "rgba(255, 206, 86, 1)",
                    "rgba(75, 192, 192, 1)",
                    "rgba(153, 102, 255, 1)",
                    "rgba(255, 159, 64, 1)",
                    "rgba(255, 99, 132, 1)",
                    "rgba(54, 162, 235, 1)",
                    "rgba(255, 206, 86, 1)",
                    "rgba(75, 192, 192, 1)",
                    "rgba(153, 102, 255, 1)",
                    "rgba(255, 159, 64, 1)",
                    "rgba(255, 99, 132, 1)",
                    "rgba(54, 162, 235, 1)",
                    "rgba(255, 206, 86, 1)",
                    "rgba(75, 192, 192, 1)",
                    "rgba(153, 102, 255, 1)",
                    "rgba(255, 159, 64, 1)",
                    "rgba(75, 192, 192, 1)",

                ],
                //


                // Border Width
                borderWidth: 2,
            },

            // Data Set 2
            {
                //   //  Chart Label
                label: "Safety %",

                //   // Actual Data
                data: [23.03, 41.45, 36.18, 45.19, 51.09, 47.82, 53.94, 55.58, 55.82, 60.50, 59.77, 64.39, 68.47, 68.82, 71.38, 72.67, 79.50, 88.10, 84.74],

                //   // Background Color
                backgroundColor: [
                    "rgba(255, 97, 132, 0.3)",
                    "rgba(54, 16, 235, 0.3)",
                    "rgba(255, 26, 86, 0.3)",
                    "rgba(75, 12, 192, 0.3)",
                    "rgba(153, 2, 255, 0.3)",
                    "rgba(255, 19, 64, 0.3)",
                    "rgba(255, 97, 132, 0.3)",
                    "rgba(54, 16, 235, 0.3)",
                    "rgba(255, 26, 86, 0.3)",
                    "rgba(75, 12, 192, 0.3)",
                    "rgba(153, 2, 255, 0.3)",
                    "rgba(255, 19, 64, 0.3)",
                    "rgba(255, 97, 132, 0.3)",
                    "rgba(54, 16, 235, 0.3)",
                    "rgba(255, 26, 86, 0.3)",
                    "rgba(75, 12, 192, 0.3)",
                    "rgba(153, 2, 255, 0.3)",
                    "rgba(255, 19, 64, 0.3)",
                    "rgba(75, 12, 192, 0.3)",

                ],
            },
        ],
    },

    // Configuration options go here
    options: {
        // Set Responsiveness By Default Its True
        // When Its True Canvas Width Height won't work
        responsive: false,

        // Set Padding
        layout: {
            padding: {
                left: 50,
                right: 0,
                top: 20,
                bottom: 0,
            },
        },

        // Configure ToolTips
        tooltips: {
            enabled: true, // Enable/Disable ToolTip By Default Its True
            backgroundColor: "lightgreen", // Set Tooltip Background Color
            titleFontFamily: "Comic Sans MS", // Set Tooltip Title Font Family
            titleFontSize: 15, // Set Tooltip Font Size
            titleFontStyle: "bold italic",
            titleFontColor: "red",
            titleAlign: "center",
            titleSpacing: 3,
            titleMarginBottom: 10,
            bodyFontFamily: "Comic Sans MS",
            bodyFontSize: 15,
            bodyFontStyle: "italic",
            bodyFontColor: "black",
            bodyAlign: "center",
            bodySpacing: 3,
        },

        // Custom Chart Title
        title: {
            display: true,
            text: "You Can Predict Asia: Crime Index by Country 2020 By Graph",
            position: "top",
            fontSize: 25,
            fontFamily: "Comic Sans MS",
            fontColor: "white",
            fontStyle: "bold italic",
            padding: 20,
            lineHeight: 5,

        },

        // Legends Configuration
        legend: {
            display: true,
            position: "bottom", // top left bottom right
            align: "end", // start end center
            labels: {
                fontColor: "white",
                fontSize: 18,
                boxWidth: 20,
            },
        },

        animation: {
            duration: 5000,
            easing: "easeInOutBounce",
        },

        // We have Three Events - events which take string array, onHover and Onclick which take function
        // Example of events
        // This chart will not respond to mousemove, etc
        // mousemove, mouseout, click, touchstart, touchmove
        // events: ["click"],

        // onClick Example
        // onClick: function () {
        //   console.log("On Click");
        // },

        // onHover Example - It will work
        // onHover: function () {
        //   console.log("On Hover");
        // },
    },
});

