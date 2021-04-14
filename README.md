# AgriAI V2
This is the newly updated version of [AgriAI](https://bit.ly/projectAgriAI) project which now uses Edge Impulse and balena to use our pest classifier at ultra low power with **76 times** less cost than previous used hardware with highly optimised software for ultra powerful inferencing even at network constrained environments.

## Edge Impulse Studio project
Pssh, here is our public EI Studio project. Check it out [here](https://studio.edgeimpulse.com/public/12041/latest)!

We have used about 1500 thermal images of damselfly and buttefly that can detect with an accuracy of 100% which is astonishing! :)

## Deploying on Raspberry Pi's using balena

Click on the following link to deploy the application to your Balena account:

[![](https://balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/arijitdas123student/agri-ai-v2)

Else you can build your own release by cloning this repo on your primary machine (x86) and use the following commands :
```
$ git clone https://github.com/arijitdas123student/agri-ai-v2.git
$ cd agri-ai-v2
$ balena login
$ balena push agri-ai-v2
```
## Future Improvements
* Add support for threshold value to the python script in [balena-cam](https://github.com/arijitdas123student/agri-ai-v2/blob/master/balena-cam/app/server.py) folder.
* Usage of Object-Detection block that has been released recently on EI.
* Make use of the EI Python Linux SDK that will help in providing more accuracy/object detection ability.
* Add support for more hardware devices such as the NVIDIA Jetson Nano/x86 based devices.

You are welcome to contribue to the above following improvements that will greatly help the project and moreover the community! :)
Please make sure to open a [PR](https://github.com/arijitdas123student/agri-ai-v2/pulls)/[file](https://github.com/arijitdas123student/agri-ai-v2/issues) an issue with your ideas if you wsih to add something more to this Open-Source project.

## Credits 
This project is based on the popular [edge-impulse-balena-cam](https://github.com/edgeimpulse/balena-cam-tinyml) repository and we are thankful to the all the contributors of the project.