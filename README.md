
## <span class="c75 c97 c107">Project Report</span>


<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 208.00px; height: 208.00px;">![](images/image16.png)</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 47.00px; height: 6.00px;">![](images/image8.png "short line")</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 185.33px;">![](images/image13.png)</span>

#### <span class="c40 c35">NAMES:</span>

* <span class="c24 c27">Boipelo Hlatshwayo</span> 

* <span class="c24 c27">M. Bahadir Kucuk</span>

* <span class="c27">* Necmettin Calibasi</span>

<span class="c29 c98 c99"></span>
<span class="c29 c98 c99"></span>

** <span class="c84 c98 c99 c97">15th December, 2019</span> **

<span class="c29 c98 c99"></span>
<span class="c71"></span>

<span class="c84 c98 c106"></span>

<span class="c150">Table of Contents</span><span class="c71">

* <span class="c91">Introduction</span><span class="c109"> 

* <span class="c26">Literature Study</span><span class="c26">        </span>
* <span class="c26">Concept of Operations</span><span class="c26">        </span>
* <span class="c21">Product Mission Statement</span><span class="c21">        </span>
  * <span class="c21">System Block Diagram</span><span class="c21">        </span>
  * <span class="c21">User Scenarios</span><span class="c21">        </span>
  * <span class="c21">Use Case Diagram</span><span class="c21">        </span>

* <span class="c26">System Requirements</span><span class="c26">        </span>

  * <span class="c21">Functional Requirements</span><span class="c21">        </span><span class="c21"</span>
  * <span class="c21">Non-Functional</span><span class="c21">        </span><span class="c21"></span>
  * <span class="c21">Privacy/Safety concerns</span><span class="c21">        </span><span class="c21"></span>
  * <span class="c21">Constraints</span><span class="c21">        </span><span class="c21">[8](#h.sc02592okb0h)</span>

* <span class="c91">System Design</span><span class="c109">        </span><span class="c91">9</span>

  * <span class="c21">Components</span><span class="c21">        </span><span class="c21"></span>

  * <span class="c21">Type of Processing</span><span class="c21">        </span><span class="c21"></span>

* <span class="c21">Classification</span><span class="c21">        </span><span class="c21"></span>

* <span class="c26">Testing</span><span class="c26">        </span><span class="c26"></span>

  * <span class="c21">Performance Classifier</span><span class="c21">        </span><span class="c21">[</span>
  * <span class="c21">Performance Algorithm</span><span class="c21">        </span><span class="c21"></span>

*<span class="c26">[Project Demo](#h.wxgoiwxi5suy)</span><span class="c26">        </span><span class="c26">[12](#h.wxgoiwxi5suy)</span>

*<span class="c26">[Evaluation](#h.lmfkqg8tlvut)</span><span class="c26">        </span><span class="c26">[13](#h.lmfkqg8tlvut)</span>

*<span class="c21">[Reflection](#h.may5qq2qvle3)</span><span class="c21">        </span><span class="c21">[13](#h.may5qq2qvle3)</span>

*<span class="c21">[Risk Analysis](#h.51i4s35l62sp)</span><span class="c21">        </span><span class="c21">[14](#h.51i4s35l62sp)</span>

*<span class="c21">[Schedule](#h.cc5p7zg2cd7o)</span><span class="c21">        </span><span class="c21">[14](#h.cc5p7zg2cd7o)</span>

*<span class="c21">[Task Division](#h.23r98aogzokj)</span><span class="c21">        </span><span class="c21">[15](#h.23r98aogzokj)</span>

*<span class="c26">[Appendix](#h.7zqfprkfwjtv)</span><span class="c26">        </span><span class="c26">[15](#h.7zqfprkfwjtv)</span>

*<span class="c21">[Image Processing](#h.sghaa2q67adl)</span><span class="c21">        </span><span class="c21">[15](#h.sghaa2q67adl)</span>

<span class="c21">[Ultrasonic Sensor](#h.nqsjebc2kqp8)</span><span class="c21">        </span><span class="c21">[21](#h.nqsjebc2kqp8)</span>

<span class="c21">[EV3 Motor](#h.nqsjebc2kqp8)</span><span class="c21">        </span><span class="c21">[21](#h.nqsjebc2kqp8)</span>

<span class="c21">[All System Code](#h.nqsjebc2kqp8)</span><span class="c21">        </span><span class="c21">[22](#h.nqsjebc2kqp8)</span>

<span class="c26">[Resources](#h.5o53q8s4pdj2)</span><span class="c26">        </span><span class="c26">[27](#h.5o53q8s4pdj2)</span>

# <span>Introduction</span>

<span class="c6">The purpose of this project is to design a domestic animal feeder that gives food by learning the eating patterns of the domesticated animal on a regular basis and to automate the process of feeding domesticated animals to reduce food wastage and eliminate stale food by using classification and a Machine Learning derivative algorithm. The problem can be broken down into three components:</span>

<span class="c6">For the problem of stale food,  many domesticated animal foods are kept in sealed containers to avoid the escape of moisture resulting in stale food. To tackle this problem we have a sealed container which is part of the automatic dispensing unit. The goal is to dispense food according to the data obtained from the eating behaviour of the domesticated animal. The device makes calculations to give a precise amount of food that the animal needs based on previous data taken from the feeding bowl of the animal.</span>

<span class="c6">For the reduction in food wastage, at this point we have solved the issue of stale food but, the distributed amount of the food also has to be optimized to reduce wastage. We will implement a Machine Learning derivative algorithm to learn the eating patterns and portion sizes required by the domesticated animal in using an algorithm which will be able to determine when and how much food needs to be dispensed optimally to ensure an empty bowl. With the help of preventing stale food, the project aims to prevent food wastage.</span>

<span class="c25">For the tailored automated feeding schedule, based on the machine learning derivative, the algorithm learns the eating patterns of the domesticated animal and distributes food accordingly within 2 hour intervals throughout the day. This allows the animal to be fed on a regular basis whilst not providing more or less than the required amount for the day. This will allow for example, the owner of the animal to leave home for a few days while maintaining a consistent feeding schedule.</span>

<span class="c29 c61"></span>

# <span class="c62">Literature Study</span>

<span class="c6">In doing a simple search of an automated pet feeding unit we found that there are a variety of products on the market. In this research we found that there are many options to what we are trying to achieve, but the implementation is far different and more of a “manual” nature compared to our approach. Many of these high tech devices on the market approach the problem with a user having to pre-program the feeding schedule for their domesticated animal on the distribution unit. The most advanced unit we have encountered has a mobile application that can control the unit remotely with built-in functionality to the degree of remotely distributing food, accessing a built-in camera to see if the domestic animal is in need of more food and other additional gimmicky features that are not of real value.</span>

<span class="c6">The main differences between what we are seeing currently available on the market and what we are seeking to develop is that user input from the owner is always needed and that the unit in terms of its distribution capabilities is not dynamic. The question now is, is it worth it to create a dynamic feeding solution for this application? As with everything else we have on Earth, our resources are limited. The undertaking of optimizing all aspects of life where non-renewable resources are required will be strictly beneficial for the environment in the general case. Any wastage of any resources shouldn’t be justified whether the resource is renewable or not.</span>

<span class="c25">How has the competition gone about implementing their solution to this problem? In analyzing the description of many automated pet feeders the approach is to pre-program some characteristics of a feeding schedule such as distributing every 4 hours, number of meals per day and to prolong the feeding in a single sitting, meaning the distribution will be slow to stop the domesticated animal from eating too much too quickly.</span><span class="c88">  
</span>

<span class="c1"></span>

<span class="c1"></span>

# <span class="c82">Concept of</span> <span>O</span><span class="c82">peration</span><span>s</span>

<span class="c24 c63"></span>

## <span class="c20">Product Mission Statement</span>

<span class="c25">The mission of this project is to prevent food wastage by preventing stale food and to help people on feeding their domestic animals regularly. The possible stakeholders of this project is everyone that has a domestic animal. How project improve the quality of life can be seen with examples in user scenarios part.</span>

<span class="c1"></span>

## <span class="c20">System Block Diagram</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 346.06px; height: 216.50px;">![](images/image10.png)</span>

<span class="c25">This block diagram shows the interactions between parts of the device. Sensors are directly connected to the motor. If it detects an object in front of the bowl, it makes the motor tick. And the motor takes the food from storage and fills the bowl out. If the food in the storage is below the determined level, the device sends a notification to the user by means of app.</span>

<span class="c1"></span>

<span class="c1"></span>

<span class="c1"></span>

## <span class="c20">User Scenarios</span>

<span class="c6">Miriam, 29, is a stewardess in the KLM Royal Dutch Airlines. She travels a lot. Her cat, Smokey, always waits for Miriam to be able to get some food. But sometimes he suffers from hunger because of Miriam’s forgetfulness. Miriam has been looking for a machine to feed her cat for a long time when she is not at home. Also, she wants to get notifications by an application about Smokey’s food schedule. Finally, Miriam finds and buys this device. First thing she needs to do is to download the app to use the device because she has to be in contact with the device when she is not available to check her cat. Then as a first step she needs to fulfill the storage of device and give enough food to the machine as a maximum amount of food that Smokey can eat in one go. Device takes this amount into consideration and never exceed this level.</span>

<span class="c6">After three days, Miriam receives a notification by her phone. It says that the storage is almost empty and it needs to be fulfilled. Miriam buys a new package of cat food on her way and come back to home. Now she feels relaxed because she doesn’t have to bear her cat’s food amount in mind anymore. She can works relievedly.</span>

<span class="c6"></span>

<span class="c6">Niyaz is a bachelor student in the Netherlands. He spends most of his time in non-profit organizations. Especially he cares about the food wastage in the world. But he has a problem in his own home. Niyaz’s cat, Sems, has an eating disorder. Whenever Niyaz gives food to his cat, Sems always eats nearly half of it and leaves the rest of it in the bowl  and two hours later he comes back and wants fresh food. Because cats don’t like to eat stale food. Thus a lot of remaining food run to waste and Niyaz is so upset. To find a solution to this problem Niyaz starts to use this device in his home. The device works on a regular basis and arranges the amount of food according to cat’s eating habits. So Niyaz can contribute to preventing food wastage for the environment.</span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

## <span>Use Case Diagram</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 417.62px;">![](images/image19.png)</span>

<span class="c24 c63"></span>

# <span class="c82">System</span> <span>R</span><span class="c82">equirements</span>

## <span class="c20">Functional Requirements</span>

<span class="c25">The system should:</span>

*   <span class="c6">Recognize if a domesticated animal is at the bowl.</span>
*   <span class="c6">Distribute food.</span>
*   <span class="c6">Dynamically calculate the amount of food required based on eating patterns of the domesticated animal.</span>
*   <span class="c6">Collect the data of eating patterns which will be used for future calculations regarding the amount of food.</span>
*   <span class="c6">Calculate the area of food using image processing. A before and after picture will be taken to calculate if there is an error term.</span>
*   <span class="c25">Segment the time before running the next iteration. Ex. 2 hour intervals.</span>

## <span class="c20">Non-Functional</span>

<span class="c6">Usability of the system are listed as:</span>

*   <span class="c6">Distribute the animal food as efficiently as possible without human interaction.</span>
*   <span class="c6">Overtime the estimations should be more accurate.</span>

<span class="c6"></span>

<span class="c6">Reliability of the system are listed as:</span>

*   <span class="c6">The system improves output results over time by reducing the error term.</span>
*   <span class="c6">We save previous outputs that will be used in the next iteration of the function. This is the only data that is stored for the system to work.</span>
*   <span class="c6">Redundancy: User notifications. Ex. Low food indicator and software optimizations (for domesticated animal).</span>
*   <span class="c6">The system has a single moving part. The motor will be used for low intensity movements.</span>

<span class="c6">Performance of the system are listed as:</span>

*   <span class="c6">Not an important aspect considering the architecture and intended use of the system.</span>
*   <span class="c6">Basic operations such as addition, subtraction, division and multiplication are used for the processing of data.</span>
*   <span class="c6">The pre-processing (image processing) is the most intensive operation in acquiring the numbers we need for the basic operations. This step in hypothetical terms has 2 hours to perform this task before the next iteration.</span>

<span class="c6">Supportability of the system are listed as:</span>

*   <span class="c6">Very low human interaction is needed with the system. Documentation is provided for the owner.</span>
*   <span class="c25">Cost effective: reduces food wastage and saves money in the long term.</span>

## <span class="c20">Privacy/Safety concerns</span>

<span class="c25">The privacy and safety issues are listed below:</span>

*   <span class="c6">The motor could jam and cause it to overheat.</span>
*   <span class="c6">The overheating could potentially cause a fire.</span>
*   <span class="c6">That fire can spread in the environment surrounding the embedded system.</span>
*   <span class="c6">No privacy concerns. The system does not have any networking capabilities.</span>
*   <span class="c6">Even if stolen the only data stored is an average value.</span>
*   <span class="c6">The camera is always pointing down.</span>
*   <span class="c6">When the food storage is full the unit is top heavy which could allow it to potentially fall on the domesticated animal if it is destabilized. There are engineering techniques that can be used to reduce this risk in manufacturing.</span>

## <span class="c20">Constraints</span>

<span class="c25">The constraints are listed below:</span>

*   <span class="c6">Pure ML algorithm needs a dedicated more expensive processor.</span>
*   <span class="c25">Implemented</span> <span class="c25">a ML</span><span class="c6"> derivative algorithm. I.e. explicit input values.</span>
*   <span class="c6">The system can be further optimized by using ML to take more variables as input and then use gradient descent to calculate a more reliable reduced error term.</span>

<span class="c25 c97">The MosCoW model:</span><span class="c6"> The requirements are defined as a functional and non-functional. All of them must have in the system except the stand( a structure to implement other components) and ML algorithm. By lack of time and resources, these features are not implemented. Finally,  So from a MoSCoW point of view our project is quite successful because it runs the core idea of the project.  </span>

<span class="c25 c97">Unified Modeling Language:</span> <span class="c6">The UML is shown in the use case diagram above.</span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

# <span class="c82">System</span> <span>D</span><span class="c82">esign</span>

## <span class="c20">Components</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 180.77px; height: 239.15px;">![](images/image20.png)</span>

<span class="c25">The entire project is not too complex. At this stage the identified resources are:</span>

*   <span class="c6">Matlab</span>
*   <span class="c6">Camera</span>
*   <span class="c6">Ultrasonic sensor</span>
*   <span class="c6">Motor</span>
*   <span class="c6">Microprocessor Chip</span>
*   <span class="c6">Bowl</span>
*   <span class="c25">Stand (to implement others)</span>

<span class="c1"></span>

<span class="c25">The ultrasonic sensor and motor of  the</span> <span class="c86">LEGO MINDSTORMS Education EV3 robot</span><span class="c6"> is used in this project.</span>

<span class="c25">The project is based on</span> <span class="c86">MATLAB</span><span class="c6"> language.</span>

<span class="c6">Bowl and stand(structure to implement other components) is not used in the project.It is important to issue that this project is planned to finish within 3 weeks. Thus, all of the components is not used due to time and resources issues. For example we need a 3D printer to have a structure to implement our camera, microprocessor, motor and sensor. Instead of being fastened to a lack of resources for 3 weeks, we try to manage to run the system in the light of the core idea of the project.</span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

## <span class="c20">Classification</span>

<span class="c25">Image Processing is used for</span> <span class="c86">Connected Components Labeling Algorithm</span><span class="c25">. Firstly,</span> <span class="c86">Binary Image</span><span class="c25">is obtained from the image by the method of</span> <span class="c86">Thresholding</span><span class="c25">. Then, we used</span> <span class="c86">Morphological Methods</span><span class="c25">to eliminate small white holes in the image by the method of</span> <span class="c86">Erosion</span><span class="c25">. Finally, the items in the image is numbered with the help of the method of</span> <span class="c86">Labelling.</span>

<span class="c25">After image processing, the area of labelled items in the images is calculated with the help of the matlab built in function "regionprops". Having the area of foods in the image, the running time for the motor that gives food is calculated. The steps for each process and all system pseudo code and code can be reached in the appendix.</span>

*   # <span class="c62">Testing</span>

<span class="c25">The system is tested many times. By doing that, the parts that do not work correctly are changed related to the code. Related to the image process testing, you can see the confusion matrix below, which shows in which cases the image process does not calculate food area correctly.</span>

*   ## <span class="c20">Performance Classifier</span>

<span class="c67">Confusion Matrix</span>

<span class="c18"></span>

<a id="t.9cac03c6f0ec44daf68a10ec8e5b82376e02b71d"></a><a id="t.0"></a>

<table class="c83">

<tbody>

<tr class="c31">

<td class="c64" colspan="2" rowspan="1">

<span class="c24 c53"></span>

</td>

<td class="c108" colspan="2" rowspan="1">

<span class="c24 c53">ACTUAL VALUES</span>

</td>

</tr>

<tr class="c14">

<td class="c81" colspan="1" rowspan="3">

<span class="c24 c53">PREDICTED</span>

</td>

<td class="c41" colspan="1" rowspan="1">

<span class="c18"></span>

</td>

<td class="c65" colspan="1" rowspan="1">

<span class="c24 c53">True</span>

</td>

<td class="c66" colspan="1" rowspan="1">

<span class="c24 c53">False</span>

</td>

</tr>

<tr class="c76">

<td class="c4" colspan="1" rowspan="1">

<span class="c24 c53">True</span>

</td>

<td class="c65" colspan="1" rowspan="1">

<span class="c24 c53">If foods are scattered separately in the bowl</span>

</td>

<td class="c66" colspan="1" rowspan="1">

<span class="c24 c53">No food in the bowl</span>

</td>

</tr>

<tr class="c76">

<td class="c4" colspan="1" rowspan="1">

<span class="c24 c53">False</span>

</td>

<td class="c65" colspan="1" rowspan="1">

<span class="c24 c53">There is food in the bowl</span>

</td>

<td class="c66" colspan="1" rowspan="1">

<span class="c24 c53">If foods are cumulative</span>

<span class="c24 c53"></span>

</td>

</tr>

</tbody>

</table>

<span class="c6">The main issue in the performance of the classifier is based on how foods are scattered in the bowl before taking an image of it. If the foods are separately scattered, then image processing works well based on the testing result. The accuracy rate cannot be determined because of the complex system.</span>

<span class="c25">The testing videos can be reached by this link</span><sup class="c25">[[1]](#ftnt1)</sup><span class="c6">.</span>

## <span class="c20">Performance Algorithm</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 621.42px; height: 413.17px;">![](images/image17.png)</span>

<span class="c1"></span>

# <span class="c62">Project Demo</span>

<span>The demo of the project can be reached by this link</span><sup>[[2]](#ftnt2)</sup><span>.</span>

*   # <span class="c62">Evaluation</span>

*   ## <span class="c20">Reflection</span>

<span class="c6">The team worked very well together and on some occasions we did bump heads when we encountered logical difficulties regarding the problems we needed to solve. We were efficient in resolving such matters by presenting all our solutions to the group and using the one we thought would yield the best outcome. In short, we realized that solving problems is difficult, especially when there are various ways of solving the same problem. Communication at times was at a deficit regarding our backgrounds but our success reinforced team morale after each challenge we faced.</span>

<span class="c6">As a team we would say we are satisfied by the input and performance of each of our members. Every member would always contribute positively towards the work we needed to complete. We did experience many delays throughout the development phase of our project due to instability of software, mainly MATLAB. Our schedule allowed us to have enough overhead should we fall behind on a specific goal in terms of time. Fortunately, we maximized our time during these errors by letting one group member resolve the technical issues while the other group members worked on the logical flow of the project. All in all the development phase took much longer than we anticipated. We overcame this by working outside of the mandatory labs to make sure everything was working on time. The one big decision we made which could be seen as a risk was choosing to stay with MATLAB rather than using a more stable technology like Python. It was very evident that we would need to read a lot of documentation in order to achieve the same thing in MATLAB.</span>

<span class="c25">Lastly, the implementation choice would have been far more different had classification not been a requirement. As we said before there are many ways to solve the same problem but as a group we all agree that using more tangible output such as the weight of the food distribution rather than the area would yield a significantly lower error term with regards to the distribution of food. We think this is the one thing we would have done differently.</span>

## <span>Risk Analysis</span>

<span class="c6">For the risk analysis we defined the risks and give the possible solutions to them;</span>

*   <span class="c25">Absence of group members:</span> <span class="c6">If one of the group members doesn’t attend the lab then workload is equally divided between members and things to do are finished separately.</span>
*   <span class="c25">Delaying the project:</span> <span class="c6">If things don’t go well and the project has to be delayed; let Teaching Assistant (TA) know and essential parts of the project are done and it is proposed to the TA.</span>
*   <span class="c25">Deficiency of tools:</span> <span class="c6">If the tools provided are not reliable enough to complete the project. Example: structure,motor. Then, we will assume that we have things which we lack and continue to run the core idea of the project.  </span>
*   <span class="c25">Management of time:</span> <span class="c25">If some parts of the project aren’t done on time, there will be extra meetings to complete these parts.</span>

<span class="c24 c61"></span>

## <span>Schedule</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 624.00px; height: 350.67px;">![](images/image18.png)</span>

## <span class="c20">Task Division</span>

<span class="c6">As a group we would agree that the undertaking of work was split evenly amongst all of us. We are not including a list of what each group member did because we cross pollinated our tasks according to who was knowledgeable at the time and was able to solve something effectively and efficiently. As a group we are happy with our efforts and have no complaints. In the event we felt that a group was not doing anything we would have then listed what each group member has done but luckily that was not the case with this project.</span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

<span class="c6"></span>

# <span class="c62">Appendix</span>

<span class="c37 c27">Pseudo Code</span>

<span class="c24 c68">******************************Motor Control*********************************</span>

<span class="c9">Function motorRun = control(calculated_time)</span>

<span class="c3">Assign a class as mymotor</span>

<span class="c3">Set mymotor speed to 5</span>

<span class="c3">Start mymotor</span>

<span class="c3">Wait calculated_time seconds</span>

<span class="c3">Stop mymotor</span>

<span class="c3">Set mymotor speed to -5</span>

<span class="c3">Start mymotor</span>

<span class="c3">Wait calculated_time seconds</span>

<span class="c3">Stop mymotor</span>

<span class="c3"> End</span>

<span class="c24 c68">*****************************Calculation Time******************************</span>

<span class="c3">Function calculation_time = specTime(imageArea)</span>

<span class="c3">Take the mean value of average list</span>

<span class="c3">Subtract imageArea from average value and assign it area_to_give</span>

<span class="c3"> </span>

<span class="c3">If area_to_give < 0</span>

<span class="c3">Assign area_to_give to zero</span>

<span class="c3">End</span>

<span class="c3">Initialize coefficient to 0.4 as a constant</span>

<span class="c3">Multiply area_to_give with coefficient    </span>

<span class="c9">End</span><span class="c24 c50"> </span>

<span class="c24 c68">*************************** Image Processing**********************************</span>

<span class="c24 c50"> </span>

<span class="c3">Function total_area = food_image_processing()      </span>

<span class="c3">Generate the number of items and display them</span>

<span class="c3">Initialize total_area to zero</span>

<span class="c3"></span>

<span class="c3">For each item in the image</span>

<span class="c3">Add each item’s area to total_area by using food_area function</span>

<span class="c24 c50">End</span>

<span class="c3">End</span>

<span class="c24 c50"> </span>

<span class="c24 c68">*******************************  Food Area  **************************************</span>

<span class="c3">Function food_area = give_area(first argument, second argument)</span>

<span class="c9">Calculate each item’s area by using the formula</span>

<span class="c9">End</span>

<span class="c24 c68">**************************** Ultrasonic Sensor **********************************</span>

<span class="c3">Function distance = sonicReading()</span>

<span class="c3">            While</span>

<span class="c9">Create an object as</span> <span class="c9">mysonicsensor</span>

<span class="c3">                        Measure the distance</span>

<span class="c3">            End</span>

<span class="c3">End</span>

<span class="c24 c68">*************************** All System Pseudocode ****************************</span>

<span class="c3">Function give_food = AntiStaleAnimalFeeder()</span>

<span class="c3">Initialize maximum amount of food to amount taken from image process</span>

<span class="c3">Add maximum food to average_list</span>

<span class="c3">Initialize food_given to 0</span>

<span class="c3">            While</span>

<span class="c3">                        Initialize the storage to 13 times of maximum food_given</span>

<span class="c3">                        Initialize storage_remain to the result of subtraction of food_given from storage</span>

<span class="c3"></span>

<span class="c3">                        If storage_remain < 2</span>

<span class="c3">                                    Send notification to the user</span>

<span class="c3">                                    Break</span>

<span class="c3">                        End</span>

<span class="c3"></span>

<span class="c3">                        Initialize average to mean value of average_list</span>

<span class="c3">                        Assign left_food to the return of food_image_processing(image of the bowl)</span>

<span class="c3"></span>

<span class="c3">                        If left_food == 0</span>

<span class="c3">                                    If average + 1 <max_food</span>

<span class="c3">                                                Increment average value</span>

<span class="c3">                                    Else</span>

<span class="c3">                                                Display warning</span>

<span class="c3">                                    End</span>

<span class="c3">                        Else</span>

<span class="c3">                                    Initialize delta to the result of subtraction of left_food from average</span>

<span class="c24 c50">                                 Add delta to average_list</span>

<span class="c24 c50">                     End</span>

<span class="c50">                     </span><span class="c3">Initialize runtime_motor to the return of specTime(left_food)</span>

<span class="c3">                       </span>

<span class="c9">Create an object as</span> <span class="c9">mysonicsensor</span><span class="c3"> and start reading the distance</span>

<span class="c3">                                    While</span>

<span class="c3">                                                If distance < 30</span>

<span class="c3">                                                            Give food using control(runtime_motor)</span>

<span class="c3">                                                            Break</span>

<span class="c3">                                                End</span>

<span class="c3">                                    End</span>

<span class="c9">End</span>

## <span class="c20">Image Processing</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 462.00px; height: 55.00px;">![](images/image2.png)</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 251.67px; height: 293.17px;">![](images/image11.jpg)</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 386.80px; height: 293.00px;">![](images/image7.png)</span>

<span class="c19">The first thing to take a shot and convert the image to the binary image. Having that, we can able to make a classification between the foods and the background. The number of food items is 10\. While calculating the area we call it as "stat".</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 542.00px; height: 145.00px;">![](images/image14.png)</span>

<span class="c24 c19">The code snippet above is to sum the area of each stats.</span>

<span class="c24 c19">In each step the total area is shown for the control whether it calculates each area.This is just for now to see what happens.</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 461.00px; height: 74.00px;">![](images/image12.png)</span>

<span class="c19">After seeing that the code works well and sums each stat (in this photo the number of stats is 10),  the "</span><span class="c19">disp</span><span class="c24 c19">" part is deleted from the code.</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 551.00px; height: 132.00px;">![](images/image15.png)</span>

<span class="c24 c50"></span>

<span class="c50"> </span>

<span class="c24 c68">*************  Code for Image Processing to Calculate Area **************</span>

<span class="c29 c19"></span>

<span class="c9">function total_area = food_image_processing(path)</span>

<span class="c29 c19"> </span>

<span class="c9">image = imread(path);</span><span class="c19 c48"> </span><span class="c7">% it reads the image by given path</span>

<span class="c9">imshow(image);</span><span class="c19 c48"> </span><span class="c7">% to see what we obtain from the bowl</span>

<span class="c7"></span>

<span class="c9">imwrite (image,"objects.bmp","bmp");</span><span class="c19 c48"> </span><span class="c19 c44">% it changes the extension of the image</span>

<span class="c29 c19">   </span>

<span class="c9">image_grey=rgb2gray(image);</span><span class="c7"> % we are interested in the area not colour.</span>

<span class="c9">level=graythresh(image_grey);</span><span class="c7"> % calculates the threshold by using the Otsu method</span>

<span class="c3">image_grey_threshold= im2bw(image_grey,level);</span>

<span class="c19 c29">   </span>

<span class="c9">image2=imopen(image_grey_threshold,strel('disk',1));</span><span class="c19 c48"> </span><span class="c7">% to eliminate small white holes</span>

<span class="c7">%on the objects</span>

<span class="c9">image3=imcomplement(image2);</span><span class="c7"> % reverse the black and white</span>

<span class="c9">[labels,numlabels]=bwlabel(image3);</span><span class="c19 c48"> </span><span class="c19 c44">% to label our image to identify the objects</span>

<span class="c29 c19">   </span>

<span class="c19 c44">% FOR LOOPING to take total area for each different stat.</span>

<span class="c3">total_area = 0;</span>

<span class="c29 c19">   </span>

<span class="c9">for  stat = 1 :</span> <span class="c9">numlabels</span><span class="c9"> </span><span class="c7">% to give each stat</span>

<span class="c9">total_area = total_area + food_area(labels,stat);</span>

<span class="c19 c44">% calculate each area of items by using food_area function</span>

<span class="c9">end</span>

<span class="c9">end</span>

<span class="c24 c68">*************************** food_area function **********************************</span>

<span class="c3">function f = give_area(labels,wanted_stats)</span>

<span class="c9">stats = regionprops(labels, 'all');</span><span class="c7"> % to query all the properties of all BLOBs</span>

<span class="c9">stats(wanted_stats);</span><span class="c7"> % to take the desired object</span>

<span class="c29 c19"> </span>

<span class="c9">f = stats(wanted_stats).Area);</span>

<span class="c7">% the formula to calculate the area of the object</span>

<span class="c9">end</span>

<span class="c24 c68">*********************************  end of code  ***********************************</span>

<span class="c1"></span>

## <span class="c20">Ultrasonic Sensor</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 459.15px; height: 295.17px;">![](images/image1.png)</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 146.50px; height: 112.09px;">![](images/image6.jpg)</span>

<span class="c19">This is to see whether the ultrasonic sensor can see the obstacle from the distance less than 30 centimeters. As you can see above, the distance between the obstacle and the sensor is 4 centimeter.</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 462.50px; height: 309.16px;">![](images/image5.png)</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 147.00px; height: 95.50px;">![](images/image9.jpg)</span>

<span class="c19">This is to see whether the ultrasonic sensor can see the obstacle from a distance of 30 centimeters. As you can see above, the distance between the obstacle and the sensor is 30 centimeter.</span>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 454.50px; height: 308.19px;">![](images/image4.png)</span><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 150.56px; height: 113.50px;">![](images/image21.jpg)</span>

<span class="c19">This is to see whether the ultrasonic sensor can see the obstacle from a distance of more than 30 centimeters. As you can see above, the distance between the obstacle and the sensor is 54 centimeters.</span>

<span class="c1"></span>

<span class="c24 c68">*********************** basic code to read distance ***************************</span>

<span class="c19 c23">function</span><span class="c19 c48"> </span><span class="c3">distance = sonicReading()</span>

<span class="c19 c48">   </span><span class="c9"> </span><span class="c9">myev3</span><span class="c9"> = legoev3(</span><span class="c19 c46">'USB'</span><span class="c9">);</span><span class="c19"> </span><span class="c7">% to open a new connection to a EV3 robot</span>

<span class="c29 c19">   </span>

<span class="c19 c48"></span> <span class="c19 c23">while</span><span class="c9"> 1</span>

<span class="c19 c48"></span> <span class="c9">mysonicsensor</span><span class="c9"> = sonicSensor(myev3);</span><span class="c19 c48"> </span><span class="c7">% to create an object</span>

<span class="c19 c48">       </span><span class="c9"> distance = readDistance(</span><span class="c9">mysonicsensor</span><span class="c9">);</span><span class="c19 c48"> </span><span class="c7">% to read the samples and to store it  </span>

<span class="c19 c48"></span> <span class="c84 c19 c23">end</span>

<span class="c19 c23 c84">end</span>

<span class="c68">********************************** end of code **********************************</span>

## <span class="c20">EV3 Motor</span>

<span class="c24 c19">The below code implements the opening and closing mechanism for the animal feed using the motor from the EV3 robot. This code opens and closes the mechanism based on a time value calculated in another function so we can dynamically control the amount of food distributed at a given time based on the behaviour of a domesticated animal.</span>

<span class="c24 c68">************************************* code *************************************</span>

<span class="c24 c19"></span>

<span class="c19 c23">function</span><span class="c19"> test = motorTest(calcTime)</span>

<span class="c19">myev3</span><span class="c19"> = legoev3(</span><span class="c19 c46">'USB'</span><span class="c19">);            </span><span class="c19 c44">% create EV3 object to connect to robot</span>

<span class="c19">mymotor = motor(myev3,</span><span class="c19 c46">'A'</span><span class="c19">);    </span><span class="c19 c44">% connecting to motor in port A</span>

<span class="c24 c19">resetRotation(mymotor)</span>

<span class="c24 c19"></span>

<span class="c19">mymotor.Speed = 5;</span> <span class="c19 c44">% speed for opening</span>

<span class="c24 c19">start(mymotor);</span>

<span class="c19">pause(calcTime);                          </span><span class="c19 c44">% wait time for motor operation</span>

<span class="c24 c19">stop(mymotor);</span>

<span class="c24 c19"></span>

<span class="c19">mymotor.Speed = -5;                  </span><span class="c19 c44">% speed for closing</span>

<span class="c24 c19">start(mymotor);</span>

<span class="c19">pause(calcTime);                        </span><span class="c19 c44">% wait time for motor operation</span>

<span class="c24 c19">stop(mymotor);</span>

<span class="c19 c23">end</span>

<span class="c24 c68">********************************** end of code **********************************</span>

## <span class="c20"></span>


*   # <span class="c62">References</span>

<span class="c3">Cividjian, N. (2017). Pervasive computing: engineering smart systems. Amsterdam, The Netherlands: Springer.</span>

<div>

<span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 817.00px; height: 43.00px;">![](images/image3.png "footer")</span>

</div>

* * *

<div>

[[1]](#ftnt_ref1)<span class="c52"> </span><span class="c69 c25">[http://bit.ly/2YO56DH](https://www.google.com/url?q=http://bit.ly/2YO56DH&sa=D&ust=1577109197918000)</span><span class="c25"> </span>

</div>

<div>

[[2]](#ftnt_ref2)<span class="c52"> </span><span class="c69 c19">[http://bit.ly/2YRUNOP](https://www.google.com/url?q=http://bit.ly/2YRUNOP&sa=D&ust=1577109197917000)</span>

</div>

<div>

[[3]](#ftnt_ref3)<span class="c52"> </span><span class="c52 c69">[http://bit.ly/2RSyOG4](https://www.google.com/url?q=http://bit.ly/2RSyOG4&sa=D&ust=1577109197918000)</span><span class="c22"> </span>

</div>
