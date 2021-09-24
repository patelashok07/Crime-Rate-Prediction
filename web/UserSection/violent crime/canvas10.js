/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctx = document.getElementById("myChart10").getContext("2d");
// Creating Chart Class Object
var myChart = new Chart(ctx, {
    // Type of Chart - bar, line, pie, doughnut, radar, polarArea
    type: "line",

    // The data for our dataset
    data: {
        // Data Labels
        labels: ["Delhi","Assam","Haryana","Madhya Pradesh","Odisha","Rajashtan","Maharashtra","Chhattisgarh","Bihar","Uttarakhand","INDIA","Uttar Pradesh","Jammu And Kashmir","Punjab","Telangana","West Bengal","Jharkhand","Karnataka","Gujarat","Andhra Pradesh","Tamil Nadu","Kerala"],

        datasets: [
            // Data Set 1
            {
                //  Chart Label
                label: "Precentage share of state",

                // Actual Data
                data: [1.2,0.9,1.8,1.4,1.5,1.3,0.3,0.5,1.9,1,1.1,2.2,0.1,0.5,0.9,0.9,1.6,0.6,0,0.4,0.1,0],

                // Background Color
                
    backgroundColor: [
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                     "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                     "rgba(0, 255, 0, 0)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                     "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                     "rgba(255, 0, 0, 0.5)",
                    "rgba(255, 0, 0, 0.5)",
                  
                 ],

                // Border Color
                borderColor: [
                    "rgba(0, 0, 0, 1)",
                      "rgba(0, 0, 0, 1)",
                        "rgba(0, 0, 0, 1)",
                          "rgba(0, 0, 0, 1)",
                            "rgba(0, 0, 0, 1)",
                            "rgba(0, 0, 0, 1)",
                      "rgba(0, 0, 0, 1)",
                        "rgba(0, 0, 0, 1)",
                          "rgba(0, 0, 0, 1)",
                            "rgba(0, 0, 0, 1)",
                  
                  "rgba(0, 255, 0, 1)",
                      "rgba(0, 0, 0, 1)",
                        "rgba(0, 0, 0, 1)",
                          "rgba(0, 0, 0, 1)",
                            "rgba(0, 0, 0, 1)",
                  
                  "rgba(0, 0, 0, 1)",
                      "rgba(0, 0, 0, 1)",
                        "rgba(0, 0, 0, 1)",
                          "rgba(0, 0, 0, 1)",
                            "rgba(0, 0, 0, 1)",
                  
                  "rgba(0, 0, 0, 1)",
                      "rgba(0, 0, 0, 1)",
                        
                  
                  
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
            text: "Precentage Share  of State of India  Crime  Year 2019",
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
