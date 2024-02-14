    bool topVariable = true;  
      
    void main() {  
      var inside_Main = true;  
     // Defining Nested Function   
       
     void myFunction() {  
        var inside_Function = true;  
         
     void nestedFunction() {  
          var inside_NestedFunction = true;  
          // This function is using all variable of the previous functions.  
          assert(topVariable);  
          assert(inside_Main);  
          assert(inside_Function);  
          assert(inside_NestedFunction);  
        }  
      }  
    }  