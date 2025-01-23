`timescale 1ns / 1ps
module Monitor_Display1_3(
    input wire A,
    input wire B,
    input wire C,
    output reg F
    );
    
    always @ (A,B,C) begin
        case ({A,B,C})
            3'b000 : F = 1'b1;
            3'b010 : F = 1'b1;
            3'b110 : F = 1'b1;
            default : F=1'b0;
        endcase
    end
endmodule


//Özet

//Kullanım Amacı: $display, belirli bir anda bilgileri görmek için kullanılırken, $monitor, değişkenlerdeki değişiklikleri izlemek için kullanılır.

//Çıktı Davranışı: $display, çağrıldığında bir kere yazdırır ve yeni bir satıra geçer; $monitor ise izleme yaptığı için değişiklikler olduğunda sürekli güncellenir ve çıktıyı değiştirebilir.
//Bu farklar, simülasyon sırasında hangi bilgilerin ne şekilde görüntüleneceğine karar verirken dikkate alınmalıdır.

