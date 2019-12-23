function give_food = AntiStaleAnimalFeeder()

myev3 = legoev3('USB'); % to open a new connection to a EV3 robot
 
disp('The machine takes the max value of the food from user...');
 
max_food = food_image_processing("images/max.jpeg");
disp(['Max value of food: ',num2str(max_food)]);
pause(1);
disp(' ');
 
average_list = [max_food]; % to add max_food to average_list
food_given = [0];
 
path_counter = 22; % to initialize path_counter to 22, the path start like food22.jpg
 
  while 1
      
      storage = max_food * 13; 
% to initialize storage with the amount of 13 times of max_food. 13times is just 
% how user determine.
      storage_remain = storage - sum(food_given); 
% to calculate the remaining food in the storage
      percentage_storage_remain = (storage_remain * 100 / storage); 
% to convert the remaining food amount to percentage
      
      disp(' ');
      disp(['Remain food in the storage : ',num2str(percentage_storage_remain),' %']);
      disp(' ');
      
       if percentage_storage_remain < 2 % to state a condition for sending notification
          disp(' ');
          disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
          disp(['You have to fulfill the storage asap. The food storage is ',num2str(percentage_storage_remain),' %']);
          disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
          disp(' ');
          break
       end
      
 
      disp("!!! 2 hours waiting .... ");
      pause(120);
      disp("!!! 2 hours have passed !!!");
      disp(" ");
      
      path = sprintf("images/food%d.jpeg",path_counter); 
      % to take images into buffer in order.
      % we ue this system because we do not take images currently 
      %but it can be easily changed to the taking images by camera currently   
      
      left_food = food_image_processing(path);
      % to assign remaining food in the bowl as left_food according to the image taken
     %from image process
      path_counter = path_counter + 1; % to increment the path_counter
      
      disp(['Food remained in the bowl : ',num2str(left_food)]);
      
      average = mean(average_list); % to take mean value of the average_list
      disp(['Average : ',num2str(int64(average))]);
      
     
      if left_food == 0 % if there is no food in the bowl
          if average + 1 < max_food % to be sure of average value  is not more than max value
            average_list = [average_list (average_list+1)];
            disp('!!! The average is increased due to empty bowl !!!!');
          else
            disp(' ');
            disp('!!! Animal cannot eat more than max value of the food !!!');
            disp(' ');
          end
      else
        delta = average - left_food; 
% to calculate the food supposed to be given in the next step
        average_list = [ average_list delta]; % to add the delta value to the average_list
      end
      
      runtime_motor = specTime(left_food); 
% to determine the time to be able to give enough food using specTime function
      disp(['Runtime for motor : ',num2str(runtime_motor)]);
      
      disp(' ');
      disp('The machine waiting for the animal to get close less than 30 cm')
      
      mysonicsensor = sonicSensor(myev3); % to create an object
      distance = readDistance(mysonicsensor); % to read the samples and to store it 
      
      while 1
% if the distance between the animal and the sensors is less than 30 cm, take action
          if distance < 30 
              disp(' ');
              disp('The machine is giving food...')
              disp(' ');
              control(runtime_motor); % process of giving food using control function
              pause(2);
              break
          end
      end
         
  end
 
    function motorRun = control(calculated_time)
        myev3 = legoev3('USB'); 		% create EV3 object to connect to robot
        mymotor = motor(myev3,'A'); 	% connecting to motor in port A
        resetRotation(mymotor)
        
        mymotor.Speed = 5; 		% speed for opening
        start(mymotor); 			% to open the cap
        pause(calculated_time); 		% wait time for motor operation
        stop(mymotor);
        
        mymotor.Speed = -5; 		% speed for closing
        start(mymotor);
        pause(calculated_time);		 % wait time for motor operation
        stop(mymotor);
   end
    
   function calculation_time = specTime(imageArea)
        M = mean(average_list); % to take mean value of the average_list
        area_to_give = M - imageArea;
        if area_to_give < 0 
            area_to_give = 0;
        % this means that the remaining food in the bowl is more than average value
        % so there is no need to give food
        end
        food_given = [food_given area_to_give]; % to determine the food should be given
        disp(['The Food need to be given for this time : ',num2str(area_to_give)]);
 
        coefficient = 0.4; % constant value to calculate the time
        calculation_time = area_to_give * coefficient;
        calculation_time = double(int64(calculation_time)) / 6; 
    end

    function f = give_area(labels,wanted_stats)
        stats = regionprops(labels, 'all'); % to query all the properties of all BLOBs
        stats(wanted_stats); % to take the desired object

        f = stats(wanted_stats).Area;
        % the formula to calculate the area of the object
     end

    function total_area = food_image_processing()
    
       % vid = videoinput('macvideo'); 
      % frame = getsnapshot(vid);

      % as mentioned above, indeed , the system runs based
      % on current image but for showing how it works and lack of some component
      % issues we used images taken previously
      
 
        image = imread(path); % it reads the image by given path
        imwrite (image,"objects.bmp","bmp"); % it changes the extension of the image
 
        image_grey=rgb2gray(image); % we are interested in the area not colour.
        level=graythresh(image_grey); 
       % calculates the threshold by using thresholding method
        image_grey_threshold= im2bw(image_grey,level);
 
        image2=imopen(image_grey_threshold,strel('disk',1)); 
       % to eliminate small white holes on the objects
 
        image3=imcomplement(image2); % reverse the black and white
        [labels,numlabels]=bwlabel(image3); % to label our image to identify the objects
 
        imshow(image);
 
 
        % FOR LOOPING to take total area for each different stat.
        total_area = 0;
 
        for  stat = 1 : numlabels % to give each stat
            total_area = total_area + food_area(labels,stat);
            % to calculate each area of items by using food_area function
        end
 
        total_area = total_area * 0.001 ; 
% to convert value of area in pixels to unit of measure being more realistic
        total_area = int64(total_area); % to convert the area in float to integer value
 
        disp(['Total area of food left in the bowl : ',num2str(total_area)]);
    end
end

