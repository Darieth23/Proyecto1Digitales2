/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 4.8.4-2ubuntu1~14.04.3 -O2 -fstack-protector -fPIC -Os) */

(* src = "circulacion.v:1" *)
module circulacion(IDLE, valid_in0, valid_in1, valid_in2, valid_in3, in0, in1, in2, in3, valid_outp0, valid_outp1, valid_outp2, valid_outp3, outp0, outp1, outp2, outp3, valid_outf0, valid_outf1, valid_outf2, valid_outf3, outf0, outf1, outf2, outf3);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  (* src = "circulacion.v:3" *)
  input IDLE;
  (* src = "circulacion.v:12" *)
  input [7:0] in0;
  (* src = "circulacion.v:13" *)
  input [7:0] in1;
  (* src = "circulacion.v:14" *)
  input [7:0] in2;
  (* src = "circulacion.v:15" *)
  input [7:0] in3;
  (* src = "circulacion.v:36" *)
  output [7:0] outf0;
  (* src = "circulacion.v:37" *)
  output [7:0] outf1;
  (* src = "circulacion.v:38" *)
  output [7:0] outf2;
  (* src = "circulacion.v:39" *)
  output [7:0] outf3;
  (* src = "circulacion.v:24" *)
  output [7:0] outp0;
  (* src = "circulacion.v:25" *)
  output [7:0] outp1;
  (* src = "circulacion.v:26" *)
  output [7:0] outp2;
  (* src = "circulacion.v:27" *)
  output [7:0] outp3;
  (* src = "circulacion.v:6" *)
  input valid_in0;
  (* src = "circulacion.v:7" *)
  input valid_in1;
  (* src = "circulacion.v:8" *)
  input valid_in2;
  (* src = "circulacion.v:9" *)
  input valid_in3;
  (* src = "circulacion.v:30" *)
  output valid_outf0;
  (* src = "circulacion.v:31" *)
  output valid_outf1;
  (* src = "circulacion.v:32" *)
  output valid_outf2;
  (* src = "circulacion.v:33" *)
  output valid_outf3;
  (* src = "circulacion.v:18" *)
  output valid_outp0;
  (* src = "circulacion.v:19" *)
  output valid_outp1;
  (* src = "circulacion.v:20" *)
  output valid_outp2;
  (* src = "circulacion.v:21" *)
  output valid_outp3;
  NOT _037_ (
    .A(valid_in3),
    .Y(_000_)
  );
  NOR _038_ (
    .A(IDLE),
    .B(_000_),
    .Y(valid_outp3)
  );
  NOT _039_ (
    .A(IDLE),
    .Y(_001_)
  );
  NOR _040_ (
    .A(_001_),
    .B(_000_),
    .Y(valid_outf3)
  );
  NOT _041_ (
    .A(in3[0]),
    .Y(_002_)
  );
  NOR _042_ (
    .A(_002_),
    .B(IDLE),
    .Y(outp3[0])
  );
  NOT _043_ (
    .A(in3[1]),
    .Y(_003_)
  );
  NOR _044_ (
    .A(_003_),
    .B(IDLE),
    .Y(outp3[1])
  );
  NOT _045_ (
    .A(in3[2]),
    .Y(_004_)
  );
  NOR _046_ (
    .A(_004_),
    .B(IDLE),
    .Y(outp3[2])
  );
  NOT _047_ (
    .A(in3[3]),
    .Y(_005_)
  );
  NOR _048_ (
    .A(_005_),
    .B(IDLE),
    .Y(outp3[3])
  );
  NOT _049_ (
    .A(in3[4]),
    .Y(_006_)
  );
  NOR _050_ (
    .A(_006_),
    .B(IDLE),
    .Y(outp3[4])
  );
  NOT _051_ (
    .A(in3[5]),
    .Y(_007_)
  );
  NOR _052_ (
    .A(_007_),
    .B(IDLE),
    .Y(outp3[5])
  );
  NOT _053_ (
    .A(in3[6]),
    .Y(_008_)
  );
  NOR _054_ (
    .A(_008_),
    .B(IDLE),
    .Y(outp3[6])
  );
  NOT _055_ (
    .A(in3[7]),
    .Y(_009_)
  );
  NOR _056_ (
    .A(_009_),
    .B(IDLE),
    .Y(outp3[7])
  );
  NOR _057_ (
    .A(_002_),
    .B(_001_),
    .Y(outf3[0])
  );
  NOR _058_ (
    .A(_003_),
    .B(_001_),
    .Y(outf3[1])
  );
  NOR _059_ (
    .A(_004_),
    .B(_001_),
    .Y(outf3[2])
  );
  NOR _060_ (
    .A(_005_),
    .B(_001_),
    .Y(outf3[3])
  );
  NOR _061_ (
    .A(_006_),
    .B(_001_),
    .Y(outf3[4])
  );
  NOR _062_ (
    .A(_007_),
    .B(_001_),
    .Y(outf3[5])
  );
  NOR _063_ (
    .A(_008_),
    .B(_001_),
    .Y(outf3[6])
  );
  NOR _064_ (
    .A(_009_),
    .B(_001_),
    .Y(outf3[7])
  );
  NOT _065_ (
    .A(valid_in2),
    .Y(_010_)
  );
  NOR _066_ (
    .A(_010_),
    .B(IDLE),
    .Y(valid_outp2)
  );
  NOR _067_ (
    .A(_010_),
    .B(_001_),
    .Y(valid_outf2)
  );
  NOT _068_ (
    .A(in2[0]),
    .Y(_011_)
  );
  NOR _069_ (
    .A(_011_),
    .B(IDLE),
    .Y(outp2[0])
  );
  NOT _070_ (
    .A(in2[1]),
    .Y(_012_)
  );
  NOR _071_ (
    .A(_012_),
    .B(IDLE),
    .Y(outp2[1])
  );
  NOT _072_ (
    .A(in2[2]),
    .Y(_013_)
  );
  NOR _073_ (
    .A(_013_),
    .B(IDLE),
    .Y(outp2[2])
  );
  NOT _074_ (
    .A(in2[3]),
    .Y(_014_)
  );
  NOR _075_ (
    .A(_014_),
    .B(IDLE),
    .Y(outp2[3])
  );
  NOT _076_ (
    .A(in2[4]),
    .Y(_015_)
  );
  NOR _077_ (
    .A(_015_),
    .B(IDLE),
    .Y(outp2[4])
  );
  NOT _078_ (
    .A(in2[5]),
    .Y(_016_)
  );
  NOR _079_ (
    .A(_016_),
    .B(IDLE),
    .Y(outp2[5])
  );
  NOT _080_ (
    .A(in2[6]),
    .Y(_017_)
  );
  NOR _081_ (
    .A(_017_),
    .B(IDLE),
    .Y(outp2[6])
  );
  NOT _082_ (
    .A(in2[7]),
    .Y(_018_)
  );
  NOR _083_ (
    .A(_018_),
    .B(IDLE),
    .Y(outp2[7])
  );
  NOR _084_ (
    .A(_011_),
    .B(_001_),
    .Y(outf2[0])
  );
  NOR _085_ (
    .A(_012_),
    .B(_001_),
    .Y(outf2[1])
  );
  NOR _086_ (
    .A(_013_),
    .B(_001_),
    .Y(outf2[2])
  );
  NOR _087_ (
    .A(_014_),
    .B(_001_),
    .Y(outf2[3])
  );
  NOR _088_ (
    .A(_015_),
    .B(_001_),
    .Y(outf2[4])
  );
  NOR _089_ (
    .A(_016_),
    .B(_001_),
    .Y(outf2[5])
  );
  NOR _090_ (
    .A(_017_),
    .B(_001_),
    .Y(outf2[6])
  );
  NOR _091_ (
    .A(_018_),
    .B(_001_),
    .Y(outf2[7])
  );
  NOT _092_ (
    .A(valid_in1),
    .Y(_019_)
  );
  NOR _093_ (
    .A(_019_),
    .B(IDLE),
    .Y(valid_outp1)
  );
  NOR _094_ (
    .A(_019_),
    .B(_001_),
    .Y(valid_outf1)
  );
  NOT _095_ (
    .A(in1[0]),
    .Y(_020_)
  );
  NOR _096_ (
    .A(_020_),
    .B(IDLE),
    .Y(outp1[0])
  );
  NOT _097_ (
    .A(in1[1]),
    .Y(_021_)
  );
  NOR _098_ (
    .A(_021_),
    .B(IDLE),
    .Y(outp1[1])
  );
  NOT _099_ (
    .A(in1[2]),
    .Y(_022_)
  );
  NOR _100_ (
    .A(_022_),
    .B(IDLE),
    .Y(outp1[2])
  );
  NOT _101_ (
    .A(in1[3]),
    .Y(_023_)
  );
  NOR _102_ (
    .A(_023_),
    .B(IDLE),
    .Y(outp1[3])
  );
  NOT _103_ (
    .A(in1[4]),
    .Y(_024_)
  );
  NOR _104_ (
    .A(_024_),
    .B(IDLE),
    .Y(outp1[4])
  );
  NOT _105_ (
    .A(in1[5]),
    .Y(_025_)
  );
  NOR _106_ (
    .A(_025_),
    .B(IDLE),
    .Y(outp1[5])
  );
  NOT _107_ (
    .A(in1[6]),
    .Y(_026_)
  );
  NOR _108_ (
    .A(_026_),
    .B(IDLE),
    .Y(outp1[6])
  );
  NOT _109_ (
    .A(in1[7]),
    .Y(_027_)
  );
  NOR _110_ (
    .A(_027_),
    .B(IDLE),
    .Y(outp1[7])
  );
  NOR _111_ (
    .A(_020_),
    .B(_001_),
    .Y(outf1[0])
  );
  NOR _112_ (
    .A(_021_),
    .B(_001_),
    .Y(outf1[1])
  );
  NOR _113_ (
    .A(_022_),
    .B(_001_),
    .Y(outf1[2])
  );
  NOR _114_ (
    .A(_023_),
    .B(_001_),
    .Y(outf1[3])
  );
  NOR _115_ (
    .A(_024_),
    .B(_001_),
    .Y(outf1[4])
  );
  NOR _116_ (
    .A(_025_),
    .B(_001_),
    .Y(outf1[5])
  );
  NOR _117_ (
    .A(_026_),
    .B(_001_),
    .Y(outf1[6])
  );
  NOR _118_ (
    .A(_027_),
    .B(_001_),
    .Y(outf1[7])
  );
  NOT _119_ (
    .A(valid_in0),
    .Y(_028_)
  );
  NOR _120_ (
    .A(_028_),
    .B(IDLE),
    .Y(valid_outp0)
  );
  NOR _121_ (
    .A(_028_),
    .B(_001_),
    .Y(valid_outf0)
  );
  NOT _122_ (
    .A(in0[0]),
    .Y(_029_)
  );
  NOR _123_ (
    .A(_029_),
    .B(IDLE),
    .Y(outp0[0])
  );
  NOT _124_ (
    .A(in0[1]),
    .Y(_030_)
  );
  NOR _125_ (
    .A(_030_),
    .B(IDLE),
    .Y(outp0[1])
  );
  NOT _126_ (
    .A(in0[2]),
    .Y(_031_)
  );
  NOR _127_ (
    .A(_031_),
    .B(IDLE),
    .Y(outp0[2])
  );
  NOT _128_ (
    .A(in0[3]),
    .Y(_032_)
  );
  NOR _129_ (
    .A(_032_),
    .B(IDLE),
    .Y(outp0[3])
  );
  NOT _130_ (
    .A(in0[4]),
    .Y(_033_)
  );
  NOR _131_ (
    .A(_033_),
    .B(IDLE),
    .Y(outp0[4])
  );
  NOT _132_ (
    .A(in0[5]),
    .Y(_034_)
  );
  NOR _133_ (
    .A(_034_),
    .B(IDLE),
    .Y(outp0[5])
  );
  NOT _134_ (
    .A(in0[6]),
    .Y(_035_)
  );
  NOR _135_ (
    .A(_035_),
    .B(IDLE),
    .Y(outp0[6])
  );
  NOT _136_ (
    .A(in0[7]),
    .Y(_036_)
  );
  NOR _137_ (
    .A(_036_),
    .B(IDLE),
    .Y(outp0[7])
  );
  NOR _138_ (
    .A(_029_),
    .B(_001_),
    .Y(outf0[0])
  );
  NOR _139_ (
    .A(_030_),
    .B(_001_),
    .Y(outf0[1])
  );
  NOR _140_ (
    .A(_031_),
    .B(_001_),
    .Y(outf0[2])
  );
  NOR _141_ (
    .A(_032_),
    .B(_001_),
    .Y(outf0[3])
  );
  NOR _142_ (
    .A(_033_),
    .B(_001_),
    .Y(outf0[4])
  );
  NOR _143_ (
    .A(_034_),
    .B(_001_),
    .Y(outf0[5])
  );
  NOR _144_ (
    .A(_035_),
    .B(_001_),
    .Y(outf0[6])
  );
  NOR _145_ (
    .A(_036_),
    .B(_001_),
    .Y(outf0[7])
  );
endmodule

(* src = "clks.v:3" *)
module gen_clk(reloj_32f, rst, reloj_4f, reloj_2f, reloj_f);
  (* src = "clks.v:17" *)
  wire [4:0] _000_;
  (* src = "clks.v:17" *)
  wire [3:0] _001_;
  (* src = "clks.v:17" *)
  wire [5:0] _002_;
  (* src = "clks.v:17" *)
  wire _003_;
  (* src = "clks.v:17" *)
  wire _004_;
  (* src = "clks.v:17" *)
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  (* src = "clks.v:15" *)
  wire bandera;
  (* src = "clks.v:13" *)
  wire [4:0] counter2f;
  (* src = "clks.v:12" *)
  wire [3:0] counter4f;
  (* src = "clks.v:14" *)
  wire [5:0] counterf;
  (* src = "clks.v:7" *)
  output reloj_2f;
  (* src = "clks.v:4" *)
  input reloj_32f;
  (* src = "clks.v:6" *)
  output reloj_4f;
  (* src = "clks.v:8" *)
  output reloj_f;
  (* src = "clks.v:5" *)
  input rst;
  NOT _064_ (
    .A(rst),
    .Y(_018_)
  );
  NOT _065_ (
    .A(counterf[0]),
    .Y(_019_)
  );
  NOR _066_ (
    .A(counterf[4]),
    .B(counterf[5]),
    .Y(_020_)
  );
  NOT _067_ (
    .A(_020_),
    .Y(_021_)
  );
  NOR _068_ (
    .A(_021_),
    .B(_019_),
    .Y(_022_)
  );
  NOR _069_ (
    .A(_022_),
    .B(_018_),
    .Y(_002_[0])
  );
  NOR _070_ (
    .A(_021_),
    .B(_018_),
    .Y(_023_)
  );
  NOT _071_ (
    .A(_023_),
    .Y(_024_)
  );
  NOT _072_ (
    .A(counterf[1]),
    .Y(_025_)
  );
  NAND _073_ (
    .A(_025_),
    .B(_019_),
    .Y(_026_)
  );
  NAND _074_ (
    .A(counterf[1]),
    .B(counterf[0]),
    .Y(_027_)
  );
  NAND _075_ (
    .A(_027_),
    .B(_026_),
    .Y(_028_)
  );
  NOR _076_ (
    .A(_028_),
    .B(_024_),
    .Y(_002_[1])
  );
  NOT _077_ (
    .A(counterf[2]),
    .Y(_029_)
  );
  NOR _078_ (
    .A(_027_),
    .B(_029_),
    .Y(_030_)
  );
  NAND _079_ (
    .A(_027_),
    .B(_029_),
    .Y(_031_)
  );
  NAND _080_ (
    .A(_031_),
    .B(_023_),
    .Y(_032_)
  );
  NOR _081_ (
    .A(_032_),
    .B(_030_),
    .Y(_002_[2])
  );
  NAND _082_ (
    .A(_030_),
    .B(counterf[3]),
    .Y(_033_)
  );
  NOT _083_ (
    .A(_033_),
    .Y(_034_)
  );
  NOT _084_ (
    .A(counterf[3]),
    .Y(_035_)
  );
  NOR _085_ (
    .A(_025_),
    .B(_019_),
    .Y(_036_)
  );
  NAND _086_ (
    .A(_036_),
    .B(counterf[2]),
    .Y(_037_)
  );
  NAND _087_ (
    .A(_037_),
    .B(_035_),
    .Y(_038_)
  );
  NAND _088_ (
    .A(_038_),
    .B(_023_),
    .Y(_039_)
  );
  NOR _089_ (
    .A(_039_),
    .B(_034_),
    .Y(_002_[3])
  );
  NOR _090_ (
    .A(_033_),
    .B(_024_),
    .Y(_002_[4])
  );
  NOT _091_ (
    .A(counter2f[0]),
    .Y(_040_)
  );
  NOR _092_ (
    .A(counter2f[3]),
    .B(counter2f[4]),
    .Y(_041_)
  );
  NOT _093_ (
    .A(_041_),
    .Y(_042_)
  );
  NOR _094_ (
    .A(_042_),
    .B(_040_),
    .Y(_043_)
  );
  NOR _095_ (
    .A(_043_),
    .B(_018_),
    .Y(_000_[0])
  );
  NAND _096_ (
    .A(_041_),
    .B(rst),
    .Y(_044_)
  );
  NOT _097_ (
    .A(counter2f[1]),
    .Y(_045_)
  );
  NAND _098_ (
    .A(_045_),
    .B(_040_),
    .Y(_046_)
  );
  NAND _099_ (
    .A(counter2f[1]),
    .B(counter2f[0]),
    .Y(_047_)
  );
  NAND _100_ (
    .A(_047_),
    .B(_046_),
    .Y(_048_)
  );
  NOR _101_ (
    .A(_048_),
    .B(_044_),
    .Y(_000_[1])
  );
  NOT _102_ (
    .A(_047_),
    .Y(_049_)
  );
  NAND _103_ (
    .A(_049_),
    .B(counter2f[2]),
    .Y(_050_)
  );
  NOT _104_ (
    .A(counter2f[2]),
    .Y(_051_)
  );
  NAND _105_ (
    .A(_047_),
    .B(_051_),
    .Y(_052_)
  );
  NAND _106_ (
    .A(_052_),
    .B(_050_),
    .Y(_053_)
  );
  NOR _107_ (
    .A(_053_),
    .B(_044_),
    .Y(_000_[2])
  );
  NOR _108_ (
    .A(_050_),
    .B(_044_),
    .Y(_000_[3])
  );
  NOT _109_ (
    .A(counter4f[0]),
    .Y(_054_)
  );
  NOR _110_ (
    .A(counter4f[2]),
    .B(counter4f[3]),
    .Y(_055_)
  );
  NOT _111_ (
    .A(_055_),
    .Y(_056_)
  );
  NOR _112_ (
    .A(_056_),
    .B(_054_),
    .Y(_057_)
  );
  NOR _113_ (
    .A(_057_),
    .B(_018_),
    .Y(_001_[0])
  );
  NAND _114_ (
    .A(_055_),
    .B(rst),
    .Y(_058_)
  );
  NOT _115_ (
    .A(counter4f[1]),
    .Y(_059_)
  );
  NAND _116_ (
    .A(_059_),
    .B(_054_),
    .Y(_060_)
  );
  NAND _117_ (
    .A(counter4f[1]),
    .B(counter4f[0]),
    .Y(_061_)
  );
  NAND _118_ (
    .A(_061_),
    .B(_060_),
    .Y(_062_)
  );
  NOR _119_ (
    .A(_062_),
    .B(_058_),
    .Y(_001_[1])
  );
  NOR _120_ (
    .A(_061_),
    .B(_058_),
    .Y(_001_[2])
  );
  NOR _121_ (
    .A(_020_),
    .B(reloj_f),
    .Y(_063_)
  );
  NOT _122_ (
    .A(bandera),
    .Y(_006_)
  );
  NOR _123_ (
    .A(_006_),
    .B(reloj_f),
    .Y(_007_)
  );
  NOR _124_ (
    .A(_007_),
    .B(_021_),
    .Y(_008_)
  );
  NOR _125_ (
    .A(_008_),
    .B(_063_),
    .Y(_009_)
  );
  NOR _126_ (
    .A(_009_),
    .B(_018_),
    .Y(_005_)
  );
  NOR _127_ (
    .A(_041_),
    .B(reloj_2f),
    .Y(_010_)
  );
  NOR _128_ (
    .A(reloj_2f),
    .B(_006_),
    .Y(_011_)
  );
  NOR _129_ (
    .A(_011_),
    .B(_042_),
    .Y(_012_)
  );
  NOR _130_ (
    .A(_012_),
    .B(_010_),
    .Y(_013_)
  );
  NOR _131_ (
    .A(_013_),
    .B(_018_),
    .Y(_003_)
  );
  NOR _132_ (
    .A(_055_),
    .B(reloj_4f),
    .Y(_014_)
  );
  NOR _133_ (
    .A(reloj_4f),
    .B(_006_),
    .Y(_015_)
  );
  NOR _134_ (
    .A(_015_),
    .B(_056_),
    .Y(_016_)
  );
  NOR _135_ (
    .A(_016_),
    .B(_014_),
    .Y(_017_)
  );
  NOR _136_ (
    .A(_017_),
    .B(_018_),
    .Y(_004_)
  );
  DFF _137_ (
    .C(reloj_32f),
    .D(_004_),
    .Q(reloj_4f)
  );
  DFF _138_ (
    .C(reloj_32f),
    .D(_003_),
    .Q(reloj_2f)
  );
  DFF _139_ (
    .C(reloj_32f),
    .D(_005_),
    .Q(reloj_f)
  );
  DFF _140_ (
    .C(reloj_32f),
    .D(_001_[0]),
    .Q(counter4f[0])
  );
  DFF _141_ (
    .C(reloj_32f),
    .D(_001_[1]),
    .Q(counter4f[1])
  );
  DFF _142_ (
    .C(reloj_32f),
    .D(_001_[2]),
    .Q(counter4f[2])
  );
  DFF _143_ (
    .C(reloj_32f),
    .D(1'b0),
    .Q(counter4f[3])
  );
  DFF _144_ (
    .C(reloj_32f),
    .D(_000_[0]),
    .Q(counter2f[0])
  );
  DFF _145_ (
    .C(reloj_32f),
    .D(_000_[1]),
    .Q(counter2f[1])
  );
  DFF _146_ (
    .C(reloj_32f),
    .D(_000_[2]),
    .Q(counter2f[2])
  );
  DFF _147_ (
    .C(reloj_32f),
    .D(_000_[3]),
    .Q(counter2f[3])
  );
  DFF _148_ (
    .C(reloj_32f),
    .D(1'b0),
    .Q(counter2f[4])
  );
  DFF _149_ (
    .C(reloj_32f),
    .D(_002_[0]),
    .Q(counterf[0])
  );
  DFF _150_ (
    .C(reloj_32f),
    .D(_002_[1]),
    .Q(counterf[1])
  );
  DFF _151_ (
    .C(reloj_32f),
    .D(_002_[2]),
    .Q(counterf[2])
  );
  DFF _152_ (
    .C(reloj_32f),
    .D(_002_[3]),
    .Q(counterf[3])
  );
  DFF _153_ (
    .C(reloj_32f),
    .D(_002_[4]),
    .Q(counterf[4])
  );
  DFF _154_ (
    .C(reloj_32f),
    .D(1'b0),
    .Q(counterf[5])
  );
  DFF _155_ (
    .C(reloj_32f),
    .D(rst),
    .Q(bandera)
  );
endmodule

(* src = "Mux2a1_descp_condL2.v:2" *)
module mux2to1_L2(clk_4f, selector, reset_L, in0_L2, in1_L2, valid_bit0, valid_bit1, valid_bit_L2, data_out_L2);
  (* src = "Mux2a1_descp_condL2.v:3" *)
  input clk_4f;
  (* src = "Mux2a1_descp_condL2.v:11" *)
  output [7:0] data_out_L2;
  (* src = "Mux2a1_descp_condL2.v:6" *)
  input [7:0] in0_L2;
  (* src = "Mux2a1_descp_condL2.v:7" *)
  input [7:0] in1_L2;
  (* src = "Mux2a1_descp_condL2.v:5" *)
  input reset_L;
  (* src = "Mux2a1_descp_condL2.v:4" *)
  input selector;
  (* src = "Mux2a1_descp_condL2.v:8" *)
  input valid_bit0;
  (* src = "Mux2a1_descp_condL2.v:9" *)
  input valid_bit1;
  (* src = "Mux2a1_descp_condL2.v:10" *)
  output valid_bit_L2;
  (* src = "Mux2a1_descp_condL2.v:18" *)
  mux_2to1_4bits mux1_L2 (
    .data_out(data_out_L2),
    .in0(in0_L2),
    .in1(in1_L2),
    .reset_L(reset_L),
    .selector(clk_4f),
    .valid_bit0(valid_bit0),
    .valid_bit1(valid_bit1),
    .valid_bit_out(valid_bit_L2)
  );
endmodule

(* src = "Mux2a1_ochobits.v:2" *)
module mux_2to1_4bits(selector, reset_L, in0, in1, valid_bit0, valid_bit1, valid_bit_out, data_out);
  (* src = "Mux2a1_ochobits.v:12" *)
  (* unused_bits = "0" *)
  wire bittemporal;
  (* src = "Mux2a1_ochobits.v:10" *)
  output [7:0] data_out;
  (* src = "Mux2a1_ochobits.v:5" *)
  input [7:0] in0;
  (* src = "Mux2a1_ochobits.v:6" *)
  input [7:0] in1;
  (* src = "Mux2a1_ochobits.v:4" *)
  input reset_L;
  (* src = "Mux2a1_ochobits.v:3" *)
  input selector;
  (* src = "Mux2a1_ochobits.v:7" *)
  input valid_bit0;
  (* src = "Mux2a1_ochobits.v:8" *)
  input valid_bit1;
  (* src = "Mux2a1_ochobits.v:9" *)
  output valid_bit_out;
  (* src = "Mux2a1_ochobits.v:13" *)
  mux_conductual mux1 (
    .data_out(data_out[3:0]),
    .in0(in0[3:0]),
    .in1(in1[3:0]),
    .reset_L(reset_L),
    .selector(selector),
    .valid_bit0(valid_bit0),
    .valid_bit1(valid_bit1),
    .valid_bit_out(valid_bit_out)
  );
  (* src = "Mux2a1_ochobits.v:14" *)
  mux_conductual mux2 (
    .data_out(data_out[7:4]),
    .in0(in0[7:4]),
    .in1(in1[7:4]),
    .reset_L(reset_L),
    .selector(selector),
    .valid_bit0(valid_bit0),
    .valid_bit1(valid_bit1),
    .valid_bit_out(bittemporal)
  );
endmodule

(* src = "Mux4a2_descp_condL1.v:2" *)
module mux_4to1L1(clk_2f, selector, reset_L, in0, in1, in2, in3, valid_bit0, valid_bit1, valid_bit2, valid_bit3, valid_bit_out1, valid_bit_out2, data_out1, data_out2);
  (* src = "Mux4a2_descp_condL1.v:3" *)
  input clk_2f;
  (* src = "Mux4a2_descp_condL1.v:16" *)
  output [7:0] data_out1;
  (* src = "Mux4a2_descp_condL1.v:17" *)
  output [7:0] data_out2;
  (* src = "Mux4a2_descp_condL1.v:6" *)
  input [7:0] in0;
  (* src = "Mux4a2_descp_condL1.v:7" *)
  input [7:0] in1;
  (* src = "Mux4a2_descp_condL1.v:8" *)
  input [7:0] in2;
  (* src = "Mux4a2_descp_condL1.v:9" *)
  input [7:0] in3;
  (* src = "Mux4a2_descp_condL1.v:5" *)
  input reset_L;
  (* src = "Mux4a2_descp_condL1.v:4" *)
  input selector;
  (* src = "Mux4a2_descp_condL1.v:10" *)
  input valid_bit0;
  (* src = "Mux4a2_descp_condL1.v:11" *)
  input valid_bit1;
  (* src = "Mux4a2_descp_condL1.v:12" *)
  input valid_bit2;
  (* src = "Mux4a2_descp_condL1.v:13" *)
  input valid_bit3;
  (* src = "Mux4a2_descp_condL1.v:14" *)
  output valid_bit_out1;
  (* src = "Mux4a2_descp_condL1.v:15" *)
  output valid_bit_out2;
  (* src = "Mux4a2_descp_condL1.v:24" *)
  mux_2to1_4bits mux1 (
    .data_out(data_out1),
    .in0(in0),
    .in1(in1),
    .reset_L(reset_L),
    .selector(clk_2f),
    .valid_bit0(valid_bit0),
    .valid_bit1(valid_bit1),
    .valid_bit_out(valid_bit_out1)
  );
  (* src = "Mux4a2_descp_condL1.v:25" *)
  mux_2to1_4bits mux2 (
    .data_out(data_out2),
    .in0(in2),
    .in1(in3),
    .reset_L(reset_L),
    .selector(clk_2f),
    .valid_bit0(valid_bit2),
    .valid_bit1(valid_bit3),
    .valid_bit_out(valid_bit_out2)
  );
endmodule

(* src = "Mux2a1_cuatrobits.v:1" *)
module mux_conductual(selector, reset_L, in0, in1, valid_bit0, valid_bit1, valid_bit_out, data_out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  (* src = "Mux2a1_cuatrobits.v:9" *)
  output [3:0] data_out;
  (* src = "Mux2a1_cuatrobits.v:4" *)
  input [3:0] in0;
  (* src = "Mux2a1_cuatrobits.v:5" *)
  input [3:0] in1;
  (* src = "Mux2a1_cuatrobits.v:3" *)
  input reset_L;
  (* src = "Mux2a1_cuatrobits.v:2" *)
  input selector;
  (* src = "Mux2a1_cuatrobits.v:6" *)
  input valid_bit0;
  (* src = "Mux2a1_cuatrobits.v:7" *)
  input valid_bit1;
  (* src = "Mux2a1_cuatrobits.v:8" *)
  output valid_bit_out;
  NOT _24_ (
    .A(reset_L),
    .Y(_00_)
  );
  NOT _25_ (
    .A(in1[0]),
    .Y(_01_)
  );
  NAND _26_ (
    .A(selector),
    .B(valid_bit1),
    .Y(_02_)
  );
  NOR _27_ (
    .A(_02_),
    .B(_01_),
    .Y(_03_)
  );
  NOT _28_ (
    .A(in0[0]),
    .Y(_04_)
  );
  NOT _29_ (
    .A(selector),
    .Y(_05_)
  );
  NAND _30_ (
    .A(_05_),
    .B(valid_bit0),
    .Y(_06_)
  );
  NOR _31_ (
    .A(_06_),
    .B(_04_),
    .Y(_07_)
  );
  NOR _32_ (
    .A(_07_),
    .B(_03_),
    .Y(_08_)
  );
  NOR _33_ (
    .A(_08_),
    .B(_00_),
    .Y(data_out[0])
  );
  NOT _34_ (
    .A(in1[1]),
    .Y(_09_)
  );
  NOR _35_ (
    .A(_02_),
    .B(_09_),
    .Y(_10_)
  );
  NOT _36_ (
    .A(in0[1]),
    .Y(_11_)
  );
  NOR _37_ (
    .A(_06_),
    .B(_11_),
    .Y(_12_)
  );
  NOR _38_ (
    .A(_12_),
    .B(_10_),
    .Y(_13_)
  );
  NOR _39_ (
    .A(_13_),
    .B(_00_),
    .Y(data_out[1])
  );
  NOT _40_ (
    .A(in1[2]),
    .Y(_14_)
  );
  NOR _41_ (
    .A(_02_),
    .B(_14_),
    .Y(_15_)
  );
  NOT _42_ (
    .A(in0[2]),
    .Y(_16_)
  );
  NOR _43_ (
    .A(_06_),
    .B(_16_),
    .Y(_17_)
  );
  NOR _44_ (
    .A(_17_),
    .B(_15_),
    .Y(_18_)
  );
  NOR _45_ (
    .A(_18_),
    .B(_00_),
    .Y(data_out[2])
  );
  NOT _46_ (
    .A(in1[3]),
    .Y(_19_)
  );
  NOR _47_ (
    .A(_02_),
    .B(_19_),
    .Y(_20_)
  );
  NOT _48_ (
    .A(in0[3]),
    .Y(_21_)
  );
  NOR _49_ (
    .A(_06_),
    .B(_21_),
    .Y(_22_)
  );
  NOR _50_ (
    .A(_22_),
    .B(_20_),
    .Y(_23_)
  );
  NOR _51_ (
    .A(_23_),
    .B(_00_),
    .Y(data_out[3])
  );
  assign valid_bit_out = 1'b1;
endmodule

(* src = "partoserial.v:1" *)
module partoserial(data_in, valid_in, reset, clk_32f, data_out_P2S);
  (* src = "partoserial.v:26" *)
  wire [3:0] _000_;
  (* src = "partoserial.v:26" *)
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  (* src = "partoserial.v:5" *)
  input clk_32f;
  (* src = "partoserial.v:9" *)
  wire [3:0] contador;
  (* src = "partoserial.v:2" *)
  input [7:0] data_in;
  (* src = "partoserial.v:6" *)
  output data_out_P2S;
  (* src = "partoserial.v:4" *)
  input reset;
  (* src = "partoserial.v:3" *)
  input valid_in;
  NOT _050_ (
    .A(reset),
    .Y(_002_)
  );
  NOR _051_ (
    .A(contador[0]),
    .B(_002_),
    .Y(_000_[0])
  );
  NOT _052_ (
    .A(contador[0]),
    .Y(_003_)
  );
  NOT _053_ (
    .A(contador[1]),
    .Y(_004_)
  );
  NOR _054_ (
    .A(_004_),
    .B(_003_),
    .Y(_005_)
  );
  NAND _055_ (
    .A(_004_),
    .B(_003_),
    .Y(_006_)
  );
  NAND _056_ (
    .A(_006_),
    .B(reset),
    .Y(_007_)
  );
  NOR _057_ (
    .A(_007_),
    .B(_005_),
    .Y(_000_[1])
  );
  NOR _058_ (
    .A(_005_),
    .B(contador[2]),
    .Y(_008_)
  );
  NAND _059_ (
    .A(_005_),
    .B(contador[2]),
    .Y(_009_)
  );
  NAND _060_ (
    .A(_009_),
    .B(reset),
    .Y(_010_)
  );
  NOR _061_ (
    .A(_010_),
    .B(_008_),
    .Y(_000_[2])
  );
  NOT _062_ (
    .A(contador[3]),
    .Y(_011_)
  );
  NOR _063_ (
    .A(_010_),
    .B(_011_),
    .Y(_000_[3])
  );
  NAND _064_ (
    .A(contador[2]),
    .B(_011_),
    .Y(_012_)
  );
  NAND _065_ (
    .A(valid_in),
    .B(reset),
    .Y(_013_)
  );
  NOR _066_ (
    .A(_013_),
    .B(data_in[2]),
    .Y(_014_)
  );
  NOR _067_ (
    .A(_014_),
    .B(_012_),
    .Y(_015_)
  );
  NOR _068_ (
    .A(contador[2]),
    .B(contador[3]),
    .Y(_016_)
  );
  NOT _069_ (
    .A(data_in[6]),
    .Y(_017_)
  );
  NOR _070_ (
    .A(_013_),
    .B(_017_),
    .Y(_018_)
  );
  NAND _071_ (
    .A(_018_),
    .B(_016_),
    .Y(_019_)
  );
  NAND _072_ (
    .A(_019_),
    .B(contador[0]),
    .Y(_020_)
  );
  NOR _073_ (
    .A(_020_),
    .B(_015_),
    .Y(_021_)
  );
  NOT _074_ (
    .A(valid_in),
    .Y(_022_)
  );
  NOR _075_ (
    .A(_022_),
    .B(_002_),
    .Y(_023_)
  );
  NOT _076_ (
    .A(contador[2]),
    .Y(_024_)
  );
  NAND _077_ (
    .A(_024_),
    .B(data_in[7]),
    .Y(_025_)
  );
  NAND _078_ (
    .A(_025_),
    .B(_023_),
    .Y(_026_)
  );
  NAND _079_ (
    .A(_026_),
    .B(_011_),
    .Y(_027_)
  );
  NOT _080_ (
    .A(data_in[3]),
    .Y(_028_)
  );
  NOR _081_ (
    .A(_012_),
    .B(_028_),
    .Y(_029_)
  );
  NOR _082_ (
    .A(_029_),
    .B(contador[0]),
    .Y(_030_)
  );
  NAND _083_ (
    .A(_030_),
    .B(_027_),
    .Y(_031_)
  );
  NAND _084_ (
    .A(_031_),
    .B(_004_),
    .Y(_032_)
  );
  NOR _085_ (
    .A(_032_),
    .B(_021_),
    .Y(_033_)
  );
  NOT _086_ (
    .A(data_in[5]),
    .Y(_034_)
  );
  NAND _087_ (
    .A(_023_),
    .B(_034_),
    .Y(_035_)
  );
  NAND _088_ (
    .A(_035_),
    .B(_016_),
    .Y(_036_)
  );
  NOR _089_ (
    .A(_012_),
    .B(_013_),
    .Y(_037_)
  );
  NAND _090_ (
    .A(_037_),
    .B(data_in[1]),
    .Y(_038_)
  );
  NAND _091_ (
    .A(_038_),
    .B(_036_),
    .Y(_039_)
  );
  NOR _092_ (
    .A(_004_),
    .B(contador[0]),
    .Y(_040_)
  );
  NAND _093_ (
    .A(_040_),
    .B(_039_),
    .Y(_041_)
  );
  NOT _094_ (
    .A(data_in[4]),
    .Y(_042_)
  );
  NAND _095_ (
    .A(_023_),
    .B(_042_),
    .Y(_043_)
  );
  NAND _096_ (
    .A(_043_),
    .B(_016_),
    .Y(_044_)
  );
  NAND _097_ (
    .A(_037_),
    .B(data_in[0]),
    .Y(_045_)
  );
  NAND _098_ (
    .A(_045_),
    .B(_044_),
    .Y(_046_)
  );
  NAND _099_ (
    .A(_046_),
    .B(_005_),
    .Y(_047_)
  );
  NAND _100_ (
    .A(_047_),
    .B(_041_),
    .Y(_048_)
  );
  NOR _101_ (
    .A(_048_),
    .B(_033_),
    .Y(_049_)
  );
  NOR _102_ (
    .A(_049_),
    .B(_002_),
    .Y(_001_)
  );
  DFF _103_ (
    .C(clk_32f),
    .D(_001_),
    .Q(data_out_P2S)
  );
  DFF _104_ (
    .C(clk_32f),
    .D(_000_[0]),
    .Q(contador[0])
  );
  DFF _105_ (
    .C(clk_32f),
    .D(_000_[1]),
    .Q(contador[1])
  );
  DFF _106_ (
    .C(clk_32f),
    .D(_000_[2]),
    .Q(contador[2])
  );
  DFF _107_ (
    .C(clk_32f),
    .D(_000_[3]),
    .Q(contador[3])
  );
endmodule

(* top =  1  *)
(* src = "phy_tx.v:8" *)
module phy_tx(clk_32f, rst, selector_2f, IDLE, valid_in0, valid_in1, valid_in2, valid_in3, in0, in1, in2, in3, salida_tx);
  (* src = "phy_tx.v:70" *)
  wire [7:0] _000_;
  (* src = "phy_tx.v:70" *)
  wire [7:0] _001_;
  (* src = "phy_tx.v:70" *)
  wire [7:0] _002_;
  (* src = "phy_tx.v:70" *)
  wire [7:0] _003_;
  (* src = "phy_tx.v:70" *)
  wire _004_;
  (* src = "phy_tx.v:70" *)
  wire _005_;
  (* src = "phy_tx.v:70" *)
  wire _006_;
  (* src = "phy_tx.v:70" *)
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  (* src = "phy_tx.v:15" *)
  input IDLE;
  (* src = "phy_tx.v:11" *)
  input clk_32f;
  (* src = "phy_tx.v:44" *)
  wire [7:0] data_out1;
  (* src = "phy_tx.v:45" *)
  wire [7:0] data_out2;
  (* src = "phy_tx.v:47" *)
  wire [7:0] data_out_L2;
  (* src = "phy_tx.v:31" *)
  wire [7:0] data_reg_0;
  (* src = "phy_tx.v:32" *)
  wire [7:0] data_reg_1;
  (* src = "phy_tx.v:33" *)
  wire [7:0] data_reg_2;
  (* src = "phy_tx.v:34" *)
  wire [7:0] data_reg_3;
  (* src = "phy_tx.v:24" *)
  input [7:0] in0;
  (* src = "phy_tx.v:25" *)
  input [7:0] in1;
  (* src = "phy_tx.v:26" *)
  input [7:0] in2;
  (* src = "phy_tx.v:27" *)
  input [7:0] in3;
  (* src = "phy_tx.v:55" *)
  wire [7:0] outf0;
  (* src = "phy_tx.v:56" *)
  wire [7:0] outf1;
  (* src = "phy_tx.v:57" *)
  wire [7:0] outf2;
  (* src = "phy_tx.v:58" *)
  wire [7:0] outf3;
  (* src = "phy_tx.v:66" *)
  wire reloj_2f;
  (* src = "phy_tx.v:65" *)
  (* unused_bits = "0" *)
  wire reloj_4f;
  (* src = "phy_tx.v:67" *)
  wire reloj_f;
  (* src = "phy_tx.v:12" *)
  input rst;
  (* src = "phy_tx.v:28" *)
  output salida_tx;
  (* src = "phy_tx.v:13" *)
  input selector_2f;
  (* src = "phy_tx.v:50" *)
  wire valid_bit_L2;
  (* src = "phy_tx.v:48" *)
  wire valid_bit_out1;
  (* src = "phy_tx.v:49" *)
  wire valid_bit_out2;
  (* src = "phy_tx.v:18" *)
  input valid_in0;
  (* src = "phy_tx.v:19" *)
  input valid_in1;
  (* src = "phy_tx.v:20" *)
  input valid_in2;
  (* src = "phy_tx.v:21" *)
  input valid_in3;
  (* src = "phy_tx.v:51" *)
  wire valid_outf0;
  (* src = "phy_tx.v:52" *)
  wire valid_outf1;
  (* src = "phy_tx.v:53" *)
  wire valid_outf2;
  (* src = "phy_tx.v:54" *)
  wire valid_outf3;
  (* src = "phy_tx.v:35" *)
  wire valid_reg_0;
  (* src = "phy_tx.v:36" *)
  wire valid_reg_1;
  (* src = "phy_tx.v:37" *)
  wire valid_reg_2;
  (* src = "phy_tx.v:38" *)
  wire valid_reg_3;
  NOT _045_ (
    .A(valid_in2),
    .Y(_031_)
  );
  NOT _046_ (
    .A(rst),
    .Y(_032_)
  );
  NOR _047_ (
    .A(_032_),
    .B(_031_),
    .Y(_006_)
  );
  NOT _048_ (
    .A(valid_in1),
    .Y(_033_)
  );
  NOR _049_ (
    .A(_033_),
    .B(_032_),
    .Y(_005_)
  );
  NOT _050_ (
    .A(valid_in0),
    .Y(_034_)
  );
  NOR _051_ (
    .A(_034_),
    .B(_032_),
    .Y(_004_)
  );
  NOT _052_ (
    .A(in3[0]),
    .Y(_035_)
  );
  NOR _053_ (
    .A(_035_),
    .B(_032_),
    .Y(_003_[0])
  );
  NOT _054_ (
    .A(in3[1]),
    .Y(_036_)
  );
  NOR _055_ (
    .A(_036_),
    .B(_032_),
    .Y(_003_[1])
  );
  NOT _056_ (
    .A(in3[2]),
    .Y(_037_)
  );
  NOR _057_ (
    .A(_037_),
    .B(_032_),
    .Y(_003_[2])
  );
  NOT _058_ (
    .A(in3[3]),
    .Y(_038_)
  );
  NOR _059_ (
    .A(_038_),
    .B(_032_),
    .Y(_003_[3])
  );
  NOT _060_ (
    .A(in3[4]),
    .Y(_039_)
  );
  NOR _061_ (
    .A(_039_),
    .B(_032_),
    .Y(_003_[4])
  );
  NOT _062_ (
    .A(in3[5]),
    .Y(_040_)
  );
  NOR _063_ (
    .A(_040_),
    .B(_032_),
    .Y(_003_[5])
  );
  NOT _064_ (
    .A(in3[6]),
    .Y(_041_)
  );
  NOR _065_ (
    .A(_041_),
    .B(_032_),
    .Y(_003_[6])
  );
  NOT _066_ (
    .A(in3[7]),
    .Y(_042_)
  );
  NOR _067_ (
    .A(_042_),
    .B(_032_),
    .Y(_003_[7])
  );
  NOT _068_ (
    .A(in2[0]),
    .Y(_043_)
  );
  NOR _069_ (
    .A(_043_),
    .B(_032_),
    .Y(_002_[0])
  );
  NOT _070_ (
    .A(in2[1]),
    .Y(_044_)
  );
  NOR _071_ (
    .A(_044_),
    .B(_032_),
    .Y(_002_[1])
  );
  NOT _072_ (
    .A(in2[2]),
    .Y(_008_)
  );
  NOR _073_ (
    .A(_008_),
    .B(_032_),
    .Y(_002_[2])
  );
  NOT _074_ (
    .A(in2[3]),
    .Y(_009_)
  );
  NOR _075_ (
    .A(_009_),
    .B(_032_),
    .Y(_002_[3])
  );
  NOT _076_ (
    .A(in2[4]),
    .Y(_010_)
  );
  NOR _077_ (
    .A(_010_),
    .B(_032_),
    .Y(_002_[4])
  );
  NOT _078_ (
    .A(in2[5]),
    .Y(_011_)
  );
  NOR _079_ (
    .A(_011_),
    .B(_032_),
    .Y(_002_[5])
  );
  NOT _080_ (
    .A(in2[6]),
    .Y(_012_)
  );
  NOR _081_ (
    .A(_012_),
    .B(_032_),
    .Y(_002_[6])
  );
  NOT _082_ (
    .A(in2[7]),
    .Y(_013_)
  );
  NOR _083_ (
    .A(_013_),
    .B(_032_),
    .Y(_002_[7])
  );
  NOT _084_ (
    .A(in1[0]),
    .Y(_014_)
  );
  NOR _085_ (
    .A(_014_),
    .B(_032_),
    .Y(_001_[0])
  );
  NOT _086_ (
    .A(in1[1]),
    .Y(_015_)
  );
  NOR _087_ (
    .A(_015_),
    .B(_032_),
    .Y(_001_[1])
  );
  NOT _088_ (
    .A(in1[2]),
    .Y(_016_)
  );
  NOR _089_ (
    .A(_016_),
    .B(_032_),
    .Y(_001_[2])
  );
  NOT _090_ (
    .A(in1[3]),
    .Y(_017_)
  );
  NOR _091_ (
    .A(_017_),
    .B(_032_),
    .Y(_001_[3])
  );
  NOT _092_ (
    .A(in1[4]),
    .Y(_018_)
  );
  NOR _093_ (
    .A(_018_),
    .B(_032_),
    .Y(_001_[4])
  );
  NOT _094_ (
    .A(in1[5]),
    .Y(_019_)
  );
  NOR _095_ (
    .A(_019_),
    .B(_032_),
    .Y(_001_[5])
  );
  NOT _096_ (
    .A(in1[6]),
    .Y(_020_)
  );
  NOR _097_ (
    .A(_020_),
    .B(_032_),
    .Y(_001_[6])
  );
  NOT _098_ (
    .A(in1[7]),
    .Y(_021_)
  );
  NOR _099_ (
    .A(_021_),
    .B(_032_),
    .Y(_001_[7])
  );
  NOT _100_ (
    .A(in0[0]),
    .Y(_022_)
  );
  NOR _101_ (
    .A(_022_),
    .B(_032_),
    .Y(_000_[0])
  );
  NOT _102_ (
    .A(in0[1]),
    .Y(_023_)
  );
  NOR _103_ (
    .A(_023_),
    .B(_032_),
    .Y(_000_[1])
  );
  NOT _104_ (
    .A(in0[2]),
    .Y(_024_)
  );
  NOR _105_ (
    .A(_024_),
    .B(_032_),
    .Y(_000_[2])
  );
  NOT _106_ (
    .A(in0[3]),
    .Y(_025_)
  );
  NOR _107_ (
    .A(_025_),
    .B(_032_),
    .Y(_000_[3])
  );
  NOT _108_ (
    .A(in0[4]),
    .Y(_026_)
  );
  NOR _109_ (
    .A(_026_),
    .B(_032_),
    .Y(_000_[4])
  );
  NOT _110_ (
    .A(in0[5]),
    .Y(_027_)
  );
  NOR _111_ (
    .A(_027_),
    .B(_032_),
    .Y(_000_[5])
  );
  NOT _112_ (
    .A(in0[6]),
    .Y(_028_)
  );
  NOR _113_ (
    .A(_028_),
    .B(_032_),
    .Y(_000_[6])
  );
  NOT _114_ (
    .A(in0[7]),
    .Y(_029_)
  );
  NOR _115_ (
    .A(_029_),
    .B(_032_),
    .Y(_000_[7])
  );
  NOT _116_ (
    .A(valid_in3),
    .Y(_030_)
  );
  NOR _117_ (
    .A(_030_),
    .B(_032_),
    .Y(_007_)
  );
  DFF _118_ (
    .C(reloj_f),
    .D(_000_[0]),
    .Q(data_reg_0[0])
  );
  DFF _119_ (
    .C(reloj_f),
    .D(_000_[1]),
    .Q(data_reg_0[1])
  );
  DFF _120_ (
    .C(reloj_f),
    .D(_000_[2]),
    .Q(data_reg_0[2])
  );
  DFF _121_ (
    .C(reloj_f),
    .D(_000_[3]),
    .Q(data_reg_0[3])
  );
  DFF _122_ (
    .C(reloj_f),
    .D(_000_[4]),
    .Q(data_reg_0[4])
  );
  DFF _123_ (
    .C(reloj_f),
    .D(_000_[5]),
    .Q(data_reg_0[5])
  );
  DFF _124_ (
    .C(reloj_f),
    .D(_000_[6]),
    .Q(data_reg_0[6])
  );
  DFF _125_ (
    .C(reloj_f),
    .D(_000_[7]),
    .Q(data_reg_0[7])
  );
  DFF _126_ (
    .C(reloj_f),
    .D(_001_[0]),
    .Q(data_reg_1[0])
  );
  DFF _127_ (
    .C(reloj_f),
    .D(_001_[1]),
    .Q(data_reg_1[1])
  );
  DFF _128_ (
    .C(reloj_f),
    .D(_001_[2]),
    .Q(data_reg_1[2])
  );
  DFF _129_ (
    .C(reloj_f),
    .D(_001_[3]),
    .Q(data_reg_1[3])
  );
  DFF _130_ (
    .C(reloj_f),
    .D(_001_[4]),
    .Q(data_reg_1[4])
  );
  DFF _131_ (
    .C(reloj_f),
    .D(_001_[5]),
    .Q(data_reg_1[5])
  );
  DFF _132_ (
    .C(reloj_f),
    .D(_001_[6]),
    .Q(data_reg_1[6])
  );
  DFF _133_ (
    .C(reloj_f),
    .D(_001_[7]),
    .Q(data_reg_1[7])
  );
  DFF _134_ (
    .C(reloj_f),
    .D(_002_[0]),
    .Q(data_reg_2[0])
  );
  DFF _135_ (
    .C(reloj_f),
    .D(_002_[1]),
    .Q(data_reg_2[1])
  );
  DFF _136_ (
    .C(reloj_f),
    .D(_002_[2]),
    .Q(data_reg_2[2])
  );
  DFF _137_ (
    .C(reloj_f),
    .D(_002_[3]),
    .Q(data_reg_2[3])
  );
  DFF _138_ (
    .C(reloj_f),
    .D(_002_[4]),
    .Q(data_reg_2[4])
  );
  DFF _139_ (
    .C(reloj_f),
    .D(_002_[5]),
    .Q(data_reg_2[5])
  );
  DFF _140_ (
    .C(reloj_f),
    .D(_002_[6]),
    .Q(data_reg_2[6])
  );
  DFF _141_ (
    .C(reloj_f),
    .D(_002_[7]),
    .Q(data_reg_2[7])
  );
  DFF _142_ (
    .C(reloj_f),
    .D(_003_[0]),
    .Q(data_reg_3[0])
  );
  DFF _143_ (
    .C(reloj_f),
    .D(_003_[1]),
    .Q(data_reg_3[1])
  );
  DFF _144_ (
    .C(reloj_f),
    .D(_003_[2]),
    .Q(data_reg_3[2])
  );
  DFF _145_ (
    .C(reloj_f),
    .D(_003_[3]),
    .Q(data_reg_3[3])
  );
  DFF _146_ (
    .C(reloj_f),
    .D(_003_[4]),
    .Q(data_reg_3[4])
  );
  DFF _147_ (
    .C(reloj_f),
    .D(_003_[5]),
    .Q(data_reg_3[5])
  );
  DFF _148_ (
    .C(reloj_f),
    .D(_003_[6]),
    .Q(data_reg_3[6])
  );
  DFF _149_ (
    .C(reloj_f),
    .D(_003_[7]),
    .Q(data_reg_3[7])
  );
  DFF _150_ (
    .C(reloj_f),
    .D(_004_),
    .Q(valid_reg_0)
  );
  DFF _151_ (
    .C(reloj_f),
    .D(_005_),
    .Q(valid_reg_1)
  );
  DFF _152_ (
    .C(reloj_f),
    .D(_006_),
    .Q(valid_reg_2)
  );
  DFF _153_ (
    .C(reloj_f),
    .D(_007_),
    .Q(valid_reg_3)
  );
  (* src = "phy_tx.v:153" *)
  mux_4to1L1 muxL1 (
    .clk_2f(reloj_f),
    .data_out1(data_out1),
    .data_out2(data_out2),
    .in0(outf0),
    .in1(outf1),
    .in2(outf2),
    .in3(outf3),
    .reset_L(rst),
    .valid_bit0(valid_outf0),
    .valid_bit1(valid_outf1),
    .valid_bit2(valid_outf2),
    .valid_bit3(valid_outf3),
    .valid_bit_out1(valid_bit_out1),
    .valid_bit_out2(valid_bit_out2)
  );
  (* src = "phy_tx.v:176" *)
  mux2to1_L2 muxL2 (
    .clk_4f(reloj_2f),
    .data_out_L2(data_out_L2),
    .in0_L2(data_out1),
    .in1_L2(data_out2),
    .reset_L(rst),
    .valid_bit0(valid_bit_out1),
    .valid_bit1(valid_bit_out2),
    .valid_bit_L2(valid_bit_L2)
  );
  (* src = "phy_tx.v:191" *)
  partoserial par2ser (
    .clk_32f(clk_32f),
    .data_in(data_out_L2),
    .data_out_P2S(salida_tx),
    .reset(rst),
    .valid_in(valid_bit_L2)
  );
  (* src = "phy_tx.v:119" *)
  circulacion recirculacion (
    .IDLE(IDLE),
    .in0(data_reg_0),
    .in1(data_reg_1),
    .in2(data_reg_2),
    .in3(data_reg_3),
    .outf0(outf0),
    .outf1(outf1),
    .outf2(outf2),
    .outf3(outf3),
    .valid_in0(valid_reg_0),
    .valid_in1(valid_reg_1),
    .valid_in2(valid_reg_2),
    .valid_in3(valid_reg_3),
    .valid_outf0(valid_outf0),
    .valid_outf1(valid_outf1),
    .valid_outf2(valid_outf2),
    .valid_outf3(valid_outf3)
  );
  (* src = "phy_tx.v:106" *)
  gen_clk reloj (
    .reloj_2f(reloj_2f),
    .reloj_32f(clk_32f),
    .reloj_4f(reloj_4f),
    .reloj_f(reloj_f),
    .rst(rst)
  );
endmodule
