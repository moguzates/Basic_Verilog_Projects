`timescale 1ns / 1ps

         module Monitor_Display_3();
        reg clk=0;
        reg [3:0] counter;
        
        always begin 
            #5 clk=~clk;
        end
        
        initial begin
            counter=4'h0; //reg'in orada yazılabilirdi.
        end
        
        always @ (posedge clk) begin
            if (counter==12) begin
                $display("D counter tamamlandi = %0d", counter); //yan yana basar %d ile, %g ise zaman   
                $finish;
            end
            else begin
                counter<=counter+1;
                //$display ("D-counter degeri = %0d", counter);
            end
        end
        
        initial begin
            //$monitor ("M-counter degeri= %0d", counter); 
            $monitor ("Time = %g | Counter = %0d", $time , counter); //10ns fark olduğunu görürüz
        end
        
endmodule
