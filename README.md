# AgriAI V2 🌾💻

Project AgriAI enables you to scan your surroundings while in a garden/farm and helps you in classifying specific type of pest where you spray the insecticide/pesticide. This helps in reduction of usage of chemicals used in modern day farming and thus not only helps us but the entire environment to stay safe. 

This is the newly updated version of [AgriAI](https://bit.ly/projectAgriAI) project which now uses Edge Impulse and balena to use our pest classifier at ultra low power with **76 times** less cost than previous used hardware with highly optimised software for ultra powerful inferencing even at network constrained environments.

For more info about the detailed write please check out our [writeup](WRITEUP.pdf)!

### Hardware ⚙️
<table>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/fincm3/2.58.3%2Brev1.prod/logo.svg" alt="fincm3" style="max-width: 100%; margin: 0px 4px;"></td><td> balenaFin</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/raspberrypi3/2.58.3%2Brev1.prod/logo.svg" alt="raspberrypi3" style="max-width: 100%; margin: 0px 4px;"></td><td>Raspberry Pi 3 Model B+</td>
</tr>
<tr><td>
<img height="24px" src="https://files.balena-cloud.com/images/raspberrypi4-64/2.65.0%2Brev1.prod/logo.svg" alt="raspberrypi4-64" style="max-width: 100%; margin: 0px 4px;"></td><td>Raspberry Pi 4 Model B</td>
</tr>
</table>

 [Raspberry Pi camera](https://www.raspberrypi.org/products/camera-module-v2/) or any USB camera.

### Software 👨‍💻

* Sign up for a free [Edge Impulse account](https://edgeimpulse.com/)
* Sign up for a free [BalenaCloud account](https://www.balena.io/)
* [balenaEtcher](https://www.balena.io/etcher/)


## Edge Impulse Studio project 💡
>Pssh, here is our public EI Studio project. Check it out [here](https://studio.edgeimpulse.com/public/12041/latest)!

We have used about 1500 thermal images of damselfly and buttefly (for prototype, can be increased for production purposes) that can detect with an accuracy of 100% which is astonishing! :)

## Deploying the code onto your Raspberry Pi using balena 🕵️‍♂️

Click on the *deploy-with-balena* button as given below, which will help you to deploy your application to balenaCloud and then to your Raspbery Pi in **one-click!**

[![](https://balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/arijitdas123student/agri-ai-v2)

Else you can build your own release by cloning this repo on your primary machine (x86) and use the following commands :
```
$ git clone https://github.com/arijitdas123student/agri-ai-v2.git
$ cd agri-ai-v2
$ balena login
$ balena push agri-ai-v2
```
## Scope of improvement 🤔
* Add support for threshold value to the python script in [balena-cam](https://github.com/arijitdas123student/agri-ai-v2/blob/master/balena-cam/app/server.py) folder.
* Usage of Object-Detection block that has been released recently on EI.
* Make use of the EI Python Linux SDK that will help in providing more accuracy/object detection ability.
* Add support for more hardware devices such as the NVIDIA Jetson Nano/x86 based devices.

You are welcome to contribue to the above following improvements that will greatly help the project and moreover the community! :)
Please make sure to open a [PR](https://github.com/arijitdas123student/agri-ai-v2/pulls)/[file](https://github.com/arijitdas123student/agri-ai-v2/issues) an issue with your ideas if you wsih to add something more to this Open-Source project.

## Additional Information ⚓

- This project uses [WebRTC](https://webrtc.org/) (a Real-Time Communication protocol).
- A direct WebRTC connection fails in some cases.
- This current version uses mjpeg streaming when the webRTC connection fails.
- Chrome browsers will hide the local IP address from WebRTC, making the page appear but no camera view. To resolve this try the following
  - Navigate to [chrome://flags/#enable-webrtc-hide-local-ips-with-mdns](chrome://flags/#enable-webrtc-hide-local-ips-with-mdns) and set it to Disabled
  - You will need to relaunch Chrome after altering the setting
- Firefox may also hide local IP address from WebRTC, confirm following in 'config:about'
  - media.peerconnection.enabled: true
  - media.peerconnection.ice.obfuscate_host_addresses: false

If you wish to test the app in Balena local mode, you'll need to add your Edge Impulse Project ID and API Key in [`edgeimpulse-inference/app/downloadWasm.sh`](edgeimpulse-inference/app/downloadWasm.sh).

BalenaCam advanced options are available in [this guide](BALENA-OPTIONS.md).

## BalenaCam supported browsers 🌐

- **Chrome** (but see note above)
- **Firefox** (but see note above)
- **Safari**
- **Microsoft Edge** (only mjpeg stream)

## Credits 💳
This project is based on the popular [edge-impulse-balena-cam](https://github.com/edgeimpulse/balena-cam-tinyml) repository and we are thankful to the all the contributors of the project.
