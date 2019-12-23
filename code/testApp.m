function distance = testApp()
warning off;
disp(' ');
disp('The machine takes the max value of the food from user...');
disp(' ');
pause(1);
max_food = food_image_processing("images/max.jpeg");
disp(['Max value of food: ',num2str(max_food)]);
pause(1);
disp(' ');
average_list = [max_food]; % Average
food_given = [0]; 
path_counter = 22;

  while 1
      storage = max_food * 13;
      storage_remain = storage - sum(food_given);
      percentage_storage_remain = (storage_remain * 100 / storage);
      
      disp(' ');
      disp(['Remain food in the storage : ',num2str(percentage_storage_remain),' %']);
      disp(' ');
      
      if percentage_storage_remain < 2
          disp(' ');
          disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
          disp(['You have to fulfill the storage asap. The food storage is ',num2str(percentage_storage_remain),' %']);
          disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
          disp(' ');
          break
      end
      
      disp(" ");
      pause(1);
      disp(".....");
      pause(1);
      disp("!!! 2 hours waiting .... ");
      pause(2);
      disp(".....");
      pause(1);
      disp(".....");
      pause(2);
      disp("!!! 2 hours have passed !!!");
      disp(" ");
      pause(2);
      
      
      path = sprintf("images/food%d.jpeg",path_counter);
      
      left_food = food_image_processing(path);
      path_counter = path_counter + 1;
      
      disp(['Food remained in the bowl : ',num2str(left_food)]);
      
      
      average = mean(average_list);
      disp(['Average : ',num2str(int64(average))]);

      %foodArea = food_image_processing();

      if left_food == 0
          if average + 1 < max_food
            average_list = [average_list (average_list+1)];
            disp('!!! The average is increased due to empty bowl !!!!');
          else
            disp(' ');
            disp('!!! Animal cannot eat more than max value of the food !!!');
            disp(' ');
          end
      else
        delta = average - left_food;
        average_list = [ average_list delta];
        %disp(['Delta value added to the average as a new value (Average - left_food) : ',num2str(delta)]);
      end
      
      runtime_motor = specTime(left_food);
      disp(['Runtime for motor : ',num2str(runtime_motor)]);
      
      


  end




    function calculation_time = specTime(imageArea)
        M = mean(average_list);
        area_to_give = M - imageArea;
        if area_to_give < 0
            area_to_give = 0;
        end
        food_given = [food_given area_to_give];
        disp(['The Food need to be given for this time : ',num2str(area_to_give)]);

        coefficient = 0.4;
        calculation_time = area_to_give * coefficient;
        calculation_time = double(int64(calculation_time)) / 6; 
    end

    function f = give_area(labels,wanted_stats)
        stats = regionprops(labels, 'all'); % to query all the properties of all BLOBs
        stats(wanted_stats); % to take the desired object

        f = stats(wanted_stats).Area;
        % the formula to calculate the area of the object
     end

    function total_area = food_image_processing(path)

    %vid = videoinput('macvideo');
    %frame = getsnapshot(vid);

    image = imread(path); % it reads the image by given path
    imwrite (image,"objects.bmp","bmp"); % it changes the extension of the image

    image_grey=rgb2gray(image); % we are interested in the area not colour.
    level=graythresh(image_grey); % calculates the threshold by using the Otsu method
    image_grey_threshold= im2bw(image_grey,level);

    image2=imopen(image_grey_threshold,strel('disk',1)); % to eliminate small white holes  %on the objects

    image3=imcomplement(image2); % reverse the black and white
    [labels,numlabels]=bwlabel(image3); % to label our image to identify the objects

    imshow(image);
    

% FOR LOOPING to take total area for each different stat.
    total_area = 0;

    for  stat = 1 : numlabels % to give each stat
        total_area = total_area + food_area(labels,stat);
        % calculate each area of items by using food_area function

    end
    total_area = total_area * 0.001 ;
    total_area = int64(total_area);
    disp(['Total area of food left in the bowl : ',num2str(total_area)]);
   end
end
