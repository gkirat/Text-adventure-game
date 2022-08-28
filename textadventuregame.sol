// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract textgame{
    bool died;
    string public statement;
    uint public x;
    uint public time;
    

    struct Storybase{
         bool storyline;
         bool storyline2;
         bool storyline3;
         bool storyline4;
         bool storyline5;
         bool storyline6;
         bool storyline7;
         bool storyline8;
         uint whichvehicle;
         uint ridestatus;    
    }

    Storybase public storybase;

    modifier timeend(){
        require(block.timestamp<=time,"Time is up");
        _;
    }
    modifier deadornot(){
        require(died==false,"You are dead, aren't you resting in peace man XD");
        _;    
    }

    function enterinput(uint y)public {
        x=y;
    }

    function Storyline()public  {
        bool next;
        next=true;
        storybase.storyline=true;
        statement= "you are a person just escaped from the prison,police is looking for you everywhere for 4 days, there are banners and your face is on TV for the most wanted man.Everyone recognises you in the neighbourhood, as you are the most recognised criminal, people just need glance at your face to call the police beacuse there is a 10k reward on you .there is only one way to escape and that is to get to the chopper which is located at the tallest bulding of the world in the city ";
        
    }

    function Storyline2()public{
        require(storybase.storyline==true,"READ THE STORY LINE");
        statement= "there are two options 1.(Bus)You see a bus going to the same buiding where helipad is located, you Jump in bus.    2.(Vehicle)steal a  vehicle nearby.";
        storybase.storyline2=true;
        time=block.timestamp +300;
    }

   function Storyline3()public timeend deadornot{
       
       require(storybase.storyline2==true,"READ THE STORY LINE 2");
       require(x==1 || x==2,"Input should be 1=Bus or 2=Vehicle " );
       if(x==1){
           statement= "You decided to go on bus and everyone recognises you and you are busted";
           died=true;
       }
       if(x==2){
           statement= "You decided to steal a vehicle and run";
       }
       storybase.storyline3=true;
       x=0;
   }

   function Storyline4()public timeend deadornot{
       
       require(storybase.storyline3==true,"READ THE STORY LINES 3");
       storybase.storyline4=true;
       statement= "Now you see 10 -15 goons with guns, you have to go to the other side of the road , you on that side by picking up one of out of three ,there are three things in front of you 1.(Sword)you pick up a sword and fight 2.(Gun)pick up gun and fight 3.(Elixir)Elixir makes you invisible for 30 secs ,you became invisible";
   }
    

    function Storyline5()public timeend deadornot{
        
        require(storybase.storyline4==true,"READ THE STORY LINE 4");
        require(x>0 && x<=3 ,"Please select a valid input ,1=Sword 2=Gun 3=Elixir");
        
        if (x==1){
            statement= "You died,You cannot fight so many goons with swords";
            died=true;
        }
         else if (x==2){
            statement= "You died,you shot one bullet on one goon the others fried you with multiple bullets CHEERS RIP";
            died =true;
        }
        else if(x==3){
            statement= "Now you can go on the other side of the  wall situated on the other side of the road";
            
        }   
        storybase.storyline5=true;
        x=0;

   }

    function Storyline6()public timeend deadornot{
        
        require(storybase.storyline5==true,"READ THE STORY LINE 5");
        statement="you see 3 vehicles keys aren't required to start the vehicle 1.ATV 2.LaFerrari(Supercar) 3.Bicycle";
        storybase.storyline6=true;
        x=0;
    }

    function Storyline7()public timeend deadornot{
        
        require(storybase.storyline6==true,"READ THE STORY LINE 6");
        require(x>0 && x<=3 ,"Pick from 1=atv 2=supercar 3=bicycle");
        storybase.whichvehicle=x;
        if(x==1){
            statement="Goons heard the sound of the vehicle and shots were fired at from behind atv doesn't have a roof or anything else .so,You died";
            died =true;
        }
        else if(x==2){
            statement="Shots are fired at you but you got in the car and ran your ass off from there but vehicle got damaged...you have reached in the city now the car is busted ......Car will blast in 2 minutes and 2mins are left to reach the buiding if you continue.....You have two options 1.You continue to ride till the building and get off near the building just when car is going to blast 2.You get off the car and go out wearing sunglasses and hat kept in the boot of the car ";
        }
        else {
            statement="You got on cycle ,goons didn't heard but when you got inside the city while riding the bicycle ,everyone recognized you and you got busted on site ";
            died= true;
        }
        storybase.storyline7=true;
        x=0;

    }

    function Storyline8()public timeend deadornot{
        
        require(storybase.storyline7==true,"READ THE STORY LINE 7");
        require(x==1 || x==2,"Please select from the given options 1=continue ride 2=get out of the");
        storybase.ridestatus=x;
        if(x==1){
            statement="You have reached the building got out of car and the car just blasted and you weren't far from it .now you have a shrapnel in your leg and you are bleeding....but you still can make it you have two options 1.Take a lift and you can be recognized in there  2.Go by stair ,no one uses the staircase ";
        
        }
        else if(x==2){
            statement="you decided to go out of the car ,you have  1.5 to reach to the helipad of the building....once you reach the building you have two options ..1.Take a lift and you can be recognized in there  2.Go by stair ,no one uses the staircase  ";  ///start the timer here
        }
        storybase.storyline8=true;
        x=0;
    }

     function FINALE()public timeend deadornot {
         require(storybase.storyline8==true,"READ THE STORY LINE 8");
         require(x==1 || x==2,"Please select from the given options 1=Lift 2=stair");
         
         if(x==1 && storybase.ridestatus==1 || x==1 && storybase.ridestatus==2){
             statement="YOU WON THE GAME ,You have successfully reached to the helipad people saw you in the lift but they couldn't do anything because network bars are zero in the lift. so ,till the time the called you got on chopper and bolted you ass away from the city ";
         }
        else if(x==2 && storybase.ridestatus==1){
            statement="You have shrapnel in your leg you cannot take staircase as Burj khalifa being the tallest building in the world it's halipad is located 281 meters above ground ,so suffer and die";
            died=true;
        }
        else {
            statement=" how could you possibly  take staircase as Burj khalifa being the tallest building in the world it's halipad is located 281 meters above ground .So ,the police catches ,you are busted ";
        died=true;
        }
     }
}

 // constructor() {
    //     storybase.weaponpickup[1]="sword";
    //     storybase.weaponpickup[2]="Pick gun";
    //     storybase.weaponpickup[3]="Poltergiest for 30 secs";
    // }
