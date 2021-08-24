/* Magic Mirror Config Sample
 *
 * By Michael Teeuw https://michaelteeuw.nl
 * MIT Licensed.
 *
 * For more information on how you can configure this file
 * See https://github.com/MichMich/MagicMirror#configuration
 *
 */

var config = {
	address: "localhost", 	// Address to listen on, can be:
							// - "localhost", "127.0.0.1", "::1" to listen on loopback interface
							// - another specific IPv4/6 to listen on a specific interface
							// - "0.0.0.0", "::" to listen on any interface
							// Default, when address config is left out or empty, is "localhost"
	port: 8080,
	basePath: "/", 	// The URL path where MagicMirror is hosted. If you are using a Reverse proxy
					// you must set the sub path here. basePath must end with a /
	ipWhitelist: ["127.0.0.1", "::ffff:127.0.0.1", "::1"], 	// Set [] to allow all IP addresses
															// or add a specific IPv4 of 192.168.1.5 :
															// ["127.0.0.1", "::ffff:127.0.0.1", "::1", "::ffff:192.168.1.5"],
															// or IPv4 range of 192.168.3.0 --> 192.168.3.15 use CIDR format :
															// ["127.0.0.1", "::ffff:127.0.0.1", "::1", "::ffff:192.168.3.0/28"],

	useHttps: false, 		// Support HTTPS or not, default "false" will use HTTP
	httpsPrivateKey: "", 	// HTTPS private key path, only require when useHttps is true
	httpsCertificate: "", 	// HTTPS Certificate path, only require when useHttps is true

	language: "en",
	locale: "en-NL",
	logLevel: ["INFO", "LOG", "WARN", "ERROR"], // Add "DEBUG" for even more logging
	timeFormat: 24,
	units: "metric",
	// serverOnly:  true/false/"local" ,
	// local for armv6l processors, default
	//   starts serveronly and then starts chrome browser
	// false, default for all NON-armv6l devices
	// true, force serveronly mode, because you want to.. no UI on this device

	modules: [
		{
			module: "alert",
		},
		{
			module: "updatenotification",
			position: "top_bar"
		},
		{
			module: "MMM-FlipClock",
			position: "top_left",
      config: {
        timeFormat: 24,
        timezone: 'Europe/Vienna'
      }
		},
    {
      module: 'MMM-SystemStats',
      position: 'top_right', // This can be any of the regions.
      classes: 'xsmall dimmed',
      header: 'System Stats',
      config: {
        updateInterval: 10000, // every 10 seconds
        align: 'right', // align labels
        units: 'metric', // default, metric, imperial
        label: 'textAndIcon',
      },
    },
    {
			module: "calendar",
			header: "Calendar",
			position: "top_right",
			config: {
				calendars: [
					{
						symbol: "calendar",
						url: "https://calendar.google.com/calendar/ical/r.goudeketting%40gmail.com/private-5a61cd05d59a58b1243425438144ca55/basic.ics",
            maximumNumberOfDays: 7,
            fetchInterval: 900000
					}
				]
			}
		},
    {
      module: 'MMM-MyDutchWeather',
      position: 'bottom_right',
      header: 'Weather',
      config: {
        latitude: 48.171077,
        longitude: 16.3672986,
        apiKey: '49ef3282c9',
        showIcons: true,
        showExtra: false,
        maxWidth: "500px",
      }
    },
    {
      module: "MMM-Nightscout",
        position: "bottom_left",
        config: {
          debug: true, //Optional: set to true if you want debug logs
          baseUrl: 'https://rmg-cgm-t1d.herokuapp.com', //Required: Base url to your Nightscout webapplication. Please make sure to not have any traling /
          colorEnabled: true, //Optional: set to true if you want to get colorful bs values. Default is false.
          chartWidth: 600,  //Optional: set chart width in px. Default is 350px.
          chartHours: 4, //Optional: number of hours that chart tracks. Default is 4.
          renderChart: true,  //Optional: set to false if you dont want to get a chart. Default is true.
          extendedHeader: false, //Option: set to false if you want to hide server title and last glucose value.
          apiSecret: '7ca27d96aae31c62b5bf2088fad92ea76789c170',
      }
    },
    {
      module: "newsfeed",
      position: "bottom_bar",
      config: {
        feeds: [
          {
            title: "NOS",
            url: "http://feeds.nos.nl/nosjournaal"
          }
        ],
        showDescription: true,
        updateInterval: 20000
      }
    },
    // {
    //   module: "MMM-BMWConnected",
    //   header: 'BMW Connected',
    //   position: "top_right",
    //   config: {
    //       email: "shgoudeketting@gmail.com",
    //       password: "8024Xt86@/",
    //       apiBase: 'www.bmw-connecteddrive.nl',
    //       distance: 'km',
    //       vehicleAngle: 320
    //   }
    // },
    // {
    //   module: 'MMM-ROVA-trashcalendar',
    //   position: 'bottom_right',
    //   config: {
    //     zipCode: "8024XT",
    //     houseNr: "86",
    //   }
    // },
	]
};

/*************** DO NOT EDIT THE LINE BELOW ***************/
if (typeof module !== "undefined") {module.exports = config;}
