/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctx = document.getElementById("myChart7").getContext("2d");
// Creating Chart Class Object
var myChart = new Chart(ctx, {
    // Type of Chart - bar, line, pie, doughnut, radar, polarArea
    type: "doughnut",

    // The data for our dataset
    data: {
        // Data Labels
        labels: ["Kidnapping & abduction","Grievous hurt","Attempt To Commit Murder","Rioting","Rape","Robbery","Murder","Arson","Attempt To Commit culpable homicide","Dowry Death","Attempt To Commit Rape","Dacoity"],

        datasets: [
            // Data Set 1
            {
                //  Chart Label
                label: "Violent Crime Cases",

                // Actual Data
                data: [105037,89115,51254,46209,32033,31065,28918,8420,7766,7115,3944,3176],

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
                  
                  
                ],
                //


                // Border Width
                borderWidth: 2,
            },

            // Data Set 2
           
           
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
                left: 100,
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
            text: "Number Of violent Crime of India",
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
