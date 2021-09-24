/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctx = document.getElementById("myChart5").getContext("2d");
// Creating Chart Class Object
var myChart = new Chart(ctx, {
    // Type of Chart - bar, line, pie, doughnut, radar, polarArea
    type: "bar",

    // The data for our dataset
    data: {
        // Data Labels
        labels: ["Uttar Pradesh", "	Maharashtra", "Kerala	", "Tamil Nadu", "Gujarat", "Madhya Pradesh", "	Rajasthan", "	Bihar", "	Delhi", "	West Bengal", "Haryana	", "	Karnataka", "	Andhra Pradesh", "	Assam", "	Telangana", "	Odisha", "Chhattisgarh", "Punjab	", "	Jharkhand", "Jammu and Kashmir", "	Uttarakhand","Himachal Pradesh","Arunachal Pradesh","Goa","Manipur","Meghalaya","Mizoram","Andaman and Nicobar Islands","Dadra and Nagar Haveli","Lakshadweep"],

        datasets: [
            // Data Set 1
            {
                //  Chart Label
                label: "Crime-2019",

                // Actual Data
                data: [628578,509443,453083,455094,431066,395619,304394,269109,316261,17890,166336,163691,145751,123783,131254,121525,96561,72855,62206,25408,28268,19924,2877,3727,3661,3897,2880,4034,290,182],

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
            {
                //   //  Chart Label
                label: "Crime-2018",

                //   // Actual Data
                data: [585157,515674,512167,499188,393194,405129,250546,262815,262612,188063,191229,163416,144703,120572,126858,107408,98233,70318,55664,27276,34715,19594,2817,3884,3781,3482,2351,3699,315,77],

                //   // Background Color
                 backgroundColor: [
                    "rgba(0, 255, 0, 0.5)",
                      "rgba(0, 255, 0, 0.5)",
                        "rgba(0, 255, 0, 0.5)",
                          "rgba(0, 255, 0, 0.5)",
                            "rgba(0, 255, 0, 0.5)",
                             "rgba(0, 255, 0, 0.5)",
                      "rgba(0, 255, 0, 0.5)",
                        "rgba(0, 255, 0, 0.5)",
                          "rgba(0, 255, 0, 0.5)",
                            "rgba(0, 255, 0, 0.5)",
                   
                    "rgba(0, 255, 0, 0.5)",
                      "rgba(0, 255, 0, 0.5)",
                        "rgba(0, 255, 0, 0.5)",
                          "rgba(0, 255, 0, 0.5)",
                            "rgba(0, 255, 0, 0.5)",
                   
                    "rgba(0, 255, 0, 0.5)",
                      "rgba(0, 255, 0, 0.5)",
                        "rgba(0, 255, 0, 0.5)",
                          "rgba(0, 255, 0, 0.5)",
                            "rgba(0, 255, 0, 0.5)",
                   
                    "rgba(0, 255, 0, 0.5)",
                      "rgba(0, 255, 0, 0.5)",
                        "rgba(0, 255, 0, 0.5)",
                          "rgba(0, 255, 0, 0.5)",
                            "rgba(0, 255, 0, 0.5)",
                   
                    "rgba(0, 255, 0, 0.5)",
                      "rgba(0, 255, 0, 0.5)",
                        "rgba(0, 255, 0, 0.5)",
                          "rgba(0, 255, 0, 0.5)",
                            "rgba(0, 255, 0, 0.5)",
                   
                   
                ],
                 // Border Color
                borderColor: [
                    "rgba(0,0, 0, 1)",
                     "rgba(0,0, 0, 1)",
                      "rgba(0,0, 0, 1)",
                       "rgba(0,0, 0, 1)",
                        "rgba(0,0, 0, 1)",
                         "rgba(0,0, 0, 1)",
                     "rgba(0,0, 0, 1)",
                      "rgba(0,0, 0, 1)",
                       "rgba(0,0, 0, 1)",
                        "rgba(0,0, 0, 1)",
                         "rgba(0,0, 0, 1)",
                     "rgba(0,0, 0, 1)",
                      "rgba(0,0, 0, 1)",
                       "rgba(0,0, 0, 1)",
                        "rgba(0,0, 0, 1)",
                         "rgba(0,0, 0, 1)",
                     "rgba(0,0, 0, 1)",
                      "rgba(0,0, 0, 1)",
                       "rgba(0,0, 0, 1)",
                        "rgba(0,0, 0, 1)",
                         "rgba(0,0, 0, 1)",
                     "rgba(0,0, 0, 1)",
                      "rgba(0,0, 0, 1)",
                       "rgba(0,0, 0, 1)",
                        "rgba(0,0, 0, 1)",
                         "rgba(0,0, 0, 1)",
                     "rgba(0,0, 0, 1)",
                      "rgba(0,0, 0, 1)",
                       "rgba(0,0, 0, 1)",
                        "rgba(0,0, 0, 1)",
                    
                ],
                  borderWidth: 2,
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
            text: "Line Prediction of India  Crime  Year 2019",
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
