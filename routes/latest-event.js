var express = require('express');
var router  = express.Router();
var db      = require('../dbConnect.js');


router.get('/', function(req, res, next)
{
   var dev = req.query.device;
   if(dev === undefined)
   {
      res.status(400).send({error: 'No device specified'});
   }
   else
   {
        console.log(dev);
        // Checking if device exists in db
        db.findDevice(dev, function(err, result) {
            if (err) {
                console.log("ERROR finding device: ", err);
            }
            else {
                if (result != 0) {
                    db.getLastSensorEvent(dev, function(err, result) {
                        if (err) {
                            // error handling code goes here
                            console.log("ERROR : ",err);            
                        } 
                        else {            
                            // code to execute on data retrieval
                            // console.log("result from last sensor is : ", result);   
                            
                            function convertTime(key, value) {
                                if (key == "timestamp") {
                                    return (new Date(value)).toLocaleString();
                                }
                                return value;
                            }

                            var json = JSON.stringify(result, convertTime);
                            res.send(json);
                        }
                    });
                }
                else {
                    res.status(400).send({error: 'no device of name: ' + dev});
                }
            }
        });

   }
});

module.exports = router;
