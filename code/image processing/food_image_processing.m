
function total_area = food_image_processing(path)

    image = imread(path); % it reads the image by given path
    imwrite (image,"objects.bmp","bmp"); % it changes the extension of the image
    
    image_grey=rgb2gray(image); % we are interested in the area not colour.
   	level=graythresh(image_grey); % calculates the threshold by using the Otsu method
    image_grey_threshold= im2bw(image_grey,level);
   	
    image2=imopen(image_grey_threshold,strel('disk',7)); % to eliminate small white holes on the objects
   	
    image3=imcomplement(image2); % reverse the black and white
   	[labels,numlabels]=bwlabel(image3); % to label our image to identify the objects
        
    imshow(image3);

   	disp (['Number of food items is : ',num2str(numlabels)]);
    
    total_area = 0;
    
    for  stat = 1:numlabels % to give each stat
        total_area = total_area + food_area(labels,stat); 
        % calculate each area of items by using food_area function
        
        disp (total_area);
        
    end
end
