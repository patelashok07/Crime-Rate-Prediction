/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctx = document.getElementById("myChart6").getContext("2d");
// Creating Chart Class Object
var myChart = new Chart(ctx, {
    // Type of Chart - bar, line, pie, doughnut, radar, polarArea
    type: "line",

    // The data for our dataset
    data: {
        // Data Labels
        labels: ["Uttar Pradesh", "	Maharashtra", "Kerala	", "Tamil Nadu", "Gujarat", "Madhya Pradesh", "	Rajasthan", "	Bihar", "	Delhi", "	West Bengal", "Haryana	", "	Karnataka", "	Andhra Pradesh", "	Assam", "	Telangana", "	Odisha", "Chhattisgarh", "Punjab	", "	Jharkhand", "Jammu and Kashmir", "	Uttarakhand","Himachal Pradesh","Arunachal Pradesh","Goa","Manipur","Meghalaya","Mizoram","Andaman and Nicobar Islands","Dadra and Nagar Haveli","Lakshadweep"],

        datasets: [
            // Data Set 1
            {
                //  Chart Label
                label: "Precentage share of state",

                // Actual Data
                data: [12.2,9.9,8.8,8.8,8.4,7.7,5.9,5.2,5.2,3.6,3.2,3.2,2.8,2.6,2.5,2.4,1.9,1.4,1.2,0.5,0.5,0.4,0.1,0.1,0.1,0.1,0.1,0.1,0.0,0.0],

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
