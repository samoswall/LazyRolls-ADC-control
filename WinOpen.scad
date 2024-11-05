$fn=200;
module base_case(){// мотор
//  translate([0,6.5,0]) color("grey") import_stl("c:/3-CC/SAS/3D/JGY-370_12V_DC_Worm_Gear_Motor.stl");
  %translate([0,6.5,0]) color("grey") import_stl("D:/Temp/3D/JGY-370_12V_DC_Worm_Gear_Motor.stl"); 
  translate([-16.2,-2.2,-2.2]) color("green") cube([32.4,46.2,2]); // верх
  translate([16.2,-2.2,-2.2]) color("green") cube([2,46.2,86]);    // к окну
  translate([-16.2,-2.2,81.8]) color("green") cube([32.4,44.2,2]); // низ
  translate([-16.2,42,-0.2]) color("green") cube([32.4,2,84]); // правая
  difference(){    // пластина крепления мотора (слева)
    // translate([-16,-2.2,0]) color("green") cube([32,2,46]); площадка
    translate([-16.2,-2.2,-0.2]) color("green") cube([32.4,2,84]);
    rotate([90,0,0]) translate([-9,6,-2])color("red") cylinder(h=6,d=3);
    rotate([90,0,0]) translate([9,6,-2])color("red") cylinder(h=6,d=3);
    rotate([90,0,0]) translate([-9,39,-2])color("red") cylinder(h=6,d=3);
    rotate([90,0,0]) translate([9,39,-2])color("red") cylinder(h=6,d=3);
    rotate([90,0,0]) translate([0,15,-2])color("red") cylinder(h=6,d=13);
    rotate([90,0,0]) translate([-9,6,1.2]) color("red") cylinder(h=1,r1=1.5,r2=2.5); 
    rotate([90,0,0]) translate([9,6,1.2]) color("red") cylinder(h=1,r1=1.5,r2=2.5); 
    rotate([90,0,0]) translate([-9,39,1.2]) color("red") cylinder(h=1,r1=1.5,r2=2.5); 
    rotate([90,0,0]) translate([9,39,1.2]) color("red") cylinder(h=1,r1=1.5,r2=2.5);
  }
  difference(){
    translate([0,-2.2,8]) color("green") cube([7,2,7]);  // сектор тормоза
    rotate([90,0,0]) translate([0,15,-2])color("red") cylinder(h=6,d=7);  
  }
}

// шестеренки
// rotate([0,0,180])translate([-23,-60,-57])color("red")import_stl("c:/3-CC/SAS/3D/GW370/G2-1.STL");
// rotate([0,0,180])translate([-23,-60,-57])color("red")import_stl("c:/3-CC/SAS/3D/GW370/G3-1.STL");
// rotate([0,-8,0])translate([-26,-73,-56.8])color("red")import_stl("c:/3-CC/SAS/3D/GW370/G4-1.STL");
// rotate([0,90,0])translate([-39,-104,-72.5])color("red")import_stl("c:/3-CC/SAS/3D/GW370/G5-1.STL");
// вал ручки
// rotate([0,-8,0])translate([-5,-52,-21.55]) color("grey") cube([6,50,6]);


module rich_motor(){  //рычаг мотора
 difference(){
  union(){
    rotate([90,0,0]) translate([0,15,0]) cylinder(h=10,d=12.5);  
    hull(){
      rotate([90,0,0]) translate([0,15,9])color("red") cylinder(h=5,d=12.5);
      rotate([90,0,0]) translate([-75,15,9])color("red") cylinder(h=5,d=12.5);
    }
  }
  difference(){
    rotate([90,0,0]) translate([0,15,-1])color("red") cylinder(h=16,d=6); // дырка под мотор
    translate([-3.5,-15,12.5]) color("green") cube([1,16,5]);
  }
  rotate([90,0,0]) translate([-75,15,4])color("red") cylinder(h=13,d=4); //дырка рычага
  translate([0,-2,8]) color("green") cube([10,3,14]);  // сектор тормоза
  translate([-7,-2,15]) color("green") cube([10,3,7]);
 }
}


module rich_window(){// рычаг окна
 difference(){
  union(){
    rotate([90,0,0]) translate([-75,15,14.2]) cylinder(h=0.8,d=12.5);//проставка рычага окна
    hull(){
      rotate([90,0,0]) translate([-75,15,15])color("red") cylinder(h=5,d=12.5);
      rotate([90,0,0]) translate([30,15,15])color("red") cylinder(h=5,d=12.5);
    }
  }
  rotate([90,0,0]) translate([-75,15,8])color("red") cylinder(h=13,d=4); //дырка рычага
  rotate([90,0,0]) translate([30,15,12])color("red") cylinder(h=11,d=4); // дырка крепления
 }
}

module krep_window(){
 difference(){
   union(){
     translate([16.2+21,-22.5,0]) color("green") cube([2,10,30]);    // крепеж к окну низ
     rotate([90,0,0]) translate([30,15,14.5])color("red") cylinder(h=0.3,d=10); // проставка
     color ("green") hull(){
       rotate([90,0,0]) translate([30,15,12.5])color("red") cylinder(h=2,d=10);
       translate([16.2+21,-14.5,3]) color("red") cube([2,2,24]);
     }
     rotate([90,0,0]) translate([30,15,20.2])color("red") cylinder(h=0.3,d=10); // проставка
     color ("green") hull(){
       rotate([90,0,0]) translate([30,15,20.5])color("red") cylinder(h=2,d=10);
       translate([16.2+21,-22.5,3]) color("red") cube([2,2,24]);
     }
     rotate([0,90,0]) translate([-30,-17.5,37.2])color("green") cylinder(h=2,d=10);
     rotate([0,90,0]) translate([0,-17.5,37.2])color("green") cylinder(h=2,d=10);
   }
 rotate([90,0,0]) translate([30,15,12])color("red") cylinder(h=11,d=4); // дырка крепления
 rotate([0,90,0]) translate([-30,-17.5,35.5])color("red") cylinder(h=4,d=3); // отверстие под шуруп
 rotate([0,90,0]) translate([0,-17.5,35.5])color("red") cylinder(h=4,d=3); // отверстие под шуруп 
 }
}


module fiksator(){  
  difference(){
    union(){
      rotate([90,0,0]) translate([-75,15,7])color("red") cylinder(h=13,d=3.6);
      rotate([90,0,0]) translate([-75,15,7.5])color("red") cylinder(h=1,d=4.4); 
    }    
    translate([-75.15,-11,12]) color("green") cube([0.3,6,6]);
    translate([-78,-11,14.85]) color("green") cube([6,6,0.3]);
  }    
  hull(){ // ручка
    rotate([90,0,0]) translate([-75,15,20])color("red") cylinder(h=2,d=6);
    rotate([90,0,0]) translate([-75,15,26])color("red") cylinder(h=2,d=10);
  }
}


module fiksator_mini(){  
  difference(){
    union(){
      rotate([90,0,0]) translate([-75,15,7])color("red") cylinder(h=13,d=3.6);
      rotate([90,0,0]) translate([-75,15,7.5])color("red") cylinder(h=1,d=4.4); 
    }    
    translate([-75.25,-12,12]) color("green") cube([0.5,6,6]);
    translate([-78,-12,14.75]) color("green") cube([6,6,0.5]);
  }    
  hull(){ // ручка
    rotate([90,0,0]) translate([-75,15,19])color("red") cylinder(h=1,d=8);
  }
}


base_case();
rich_motor();
rich_window();
krep_window();
fiksator();
translate([105,-3.5,0]) fiksator_mini();