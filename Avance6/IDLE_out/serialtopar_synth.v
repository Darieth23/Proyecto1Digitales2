/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 4.8.4-2ubuntu1~14.04.3 -O2 -fstack-protector -fPIC -Os) */

(* top =  1  *)
(* src = "serialtopar_synth.v:1" *)
module serialtopar_synth(IDLE_out, clk_4f, clk_32f, reset_L, IDL);
  (* src = "serialtopar_synth.v:23" *)
  wire [7:0] _000_;
  (* src = "serialtopar_synth.v:23" *)
  wire _001_;
  (* src = "serialtopar_synth.v:23" *)
  wire [3:0] _002_;
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
  (* src = "serialtopar_synth.v:7" *)
  input [7:0] IDL;
  (* src = "serialtopar_synth.v:3" *)
  output [7:0] IDLE_out;
  (* src = "serialtopar_synth.v:9" *)
  wire active;
  (* src = "serialtopar_synth.v:11" *)
  wire [3:0] bc_cnt;
  (* src = "serialtopar_synth.v:5" *)
  input clk_32f;
  (* src = "serialtopar_synth.v:4" *)
  input clk_4f;
  (* src = "serialtopar_synth.v:6" *)
  input reset_L;
  NOT _050_ (
    .A(reset_L),
    .Y(_003_)
  );
  NOT _051_ (
    .A(bc_cnt[3]),
    .Y(_004_)
  );
  NOT _052_ (
    .A(bc_cnt[2]),
    .Y(_005_)
  );
  NAND _053_ (
    .A(_005_),
    .B(_004_),
    .Y(_006_)
  );
  NOR _054_ (
    .A(_006_),
    .B(active),
    .Y(_007_)
  );
  NOR _055_ (
    .A(_007_),
    .B(_003_),
    .Y(_001_)
  );
  NAND _056_ (
    .A(IDL[5]),
    .B(IDL[3]),
    .Y(_008_)
  );
  NOT _057_ (
    .A(IDL[0]),
    .Y(_009_)
  );
  NOT _058_ (
    .A(IDL[1]),
    .Y(_010_)
  );
  NAND _059_ (
    .A(_010_),
    .B(_009_),
    .Y(_011_)
  );
  NOR _060_ (
    .A(_011_),
    .B(_008_),
    .Y(_012_)
  );
  NOT _061_ (
    .A(IDL[4]),
    .Y(_013_)
  );
  NAND _062_ (
    .A(IDL[2]),
    .B(reset_L),
    .Y(_014_)
  );
  NOR _063_ (
    .A(_014_),
    .B(_013_),
    .Y(_015_)
  );
  NAND _064_ (
    .A(_015_),
    .B(_012_),
    .Y(_016_)
  );
  NOT _065_ (
    .A(IDL[6]),
    .Y(_017_)
  );
  NAND _066_ (
    .A(IDL[7]),
    .B(_017_),
    .Y(_018_)
  );
  NOR _067_ (
    .A(_018_),
    .B(_016_),
    .Y(_019_)
  );
  NOT _068_ (
    .A(_019_),
    .Y(_020_)
  );
  NOR _069_ (
    .A(_020_),
    .B(bc_cnt[0]),
    .Y(_002_[0])
  );
  NOT _070_ (
    .A(bc_cnt[0]),
    .Y(_021_)
  );
  NOT _071_ (
    .A(bc_cnt[1]),
    .Y(_022_)
  );
  NAND _072_ (
    .A(_022_),
    .B(_021_),
    .Y(_023_)
  );
  NOR _073_ (
    .A(_022_),
    .B(_021_),
    .Y(_024_)
  );
  NOT _074_ (
    .A(_024_),
    .Y(_025_)
  );
  NAND _075_ (
    .A(_025_),
    .B(_023_),
    .Y(_026_)
  );
  NOR _076_ (
    .A(_026_),
    .B(_020_),
    .Y(_002_[1])
  );
  NAND _077_ (
    .A(_025_),
    .B(_005_),
    .Y(_027_)
  );
  NAND _078_ (
    .A(_024_),
    .B(bc_cnt[2]),
    .Y(_028_)
  );
  NAND _079_ (
    .A(_028_),
    .B(_027_),
    .Y(_029_)
  );
  NOR _080_ (
    .A(_029_),
    .B(_020_),
    .Y(_002_[2])
  );
  NOT _081_ (
    .A(_028_),
    .Y(_030_)
  );
  NOR _082_ (
    .A(_030_),
    .B(_004_),
    .Y(_031_)
  );
  NOR _083_ (
    .A(_028_),
    .B(bc_cnt[3]),
    .Y(_032_)
  );
  NOR _084_ (
    .A(_032_),
    .B(_031_),
    .Y(_033_)
  );
  NOR _085_ (
    .A(_033_),
    .B(_020_),
    .Y(_002_[3])
  );
  NOR _086_ (
    .A(_019_),
    .B(_003_),
    .Y(_034_)
  );
  NAND _087_ (
    .A(_034_),
    .B(IDLE_out[0]),
    .Y(_035_)
  );
  NOT _088_ (
    .A(_016_),
    .Y(_036_)
  );
  NOR _089_ (
    .A(IDL[7]),
    .B(_003_),
    .Y(_037_)
  );
  NAND _090_ (
    .A(_037_),
    .B(IDL[6]),
    .Y(_038_)
  );
  NOR _091_ (
    .A(_038_),
    .B(_007_),
    .Y(_039_)
  );
  NAND _092_ (
    .A(_039_),
    .B(_036_),
    .Y(_040_)
  );
  NAND _093_ (
    .A(_040_),
    .B(_035_),
    .Y(_000_[0])
  );
  NOT _094_ (
    .A(_039_),
    .Y(_041_)
  );
  NOR _095_ (
    .A(_041_),
    .B(_016_),
    .Y(_042_)
  );
  NAND _096_ (
    .A(_034_),
    .B(IDLE_out[1]),
    .Y(_043_)
  );
  NOR _097_ (
    .A(_043_),
    .B(_042_),
    .Y(_000_[1])
  );
  NAND _098_ (
    .A(_034_),
    .B(IDLE_out[2]),
    .Y(_044_)
  );
  NOR _099_ (
    .A(_044_),
    .B(_042_),
    .Y(_000_[2])
  );
  NAND _100_ (
    .A(_034_),
    .B(IDLE_out[3]),
    .Y(_045_)
  );
  NOR _101_ (
    .A(_045_),
    .B(_042_),
    .Y(_000_[3])
  );
  NAND _102_ (
    .A(_034_),
    .B(IDLE_out[4]),
    .Y(_046_)
  );
  NOR _103_ (
    .A(_046_),
    .B(_042_),
    .Y(_000_[4])
  );
  NAND _104_ (
    .A(_034_),
    .B(IDLE_out[5]),
    .Y(_047_)
  );
  NOR _105_ (
    .A(_047_),
    .B(_042_),
    .Y(_000_[5])
  );
  NAND _106_ (
    .A(_034_),
    .B(IDLE_out[6]),
    .Y(_048_)
  );
  NOR _107_ (
    .A(_048_),
    .B(_042_),
    .Y(_000_[6])
  );
  NAND _108_ (
    .A(_034_),
    .B(IDLE_out[7]),
    .Y(_049_)
  );
  NOR _109_ (
    .A(_049_),
    .B(_042_),
    .Y(_000_[7])
  );
  DFF _110_ (
    .C(clk_32f),
    .D(_000_[0]),
    .Q(IDLE_out[0])
  );
  DFF _111_ (
    .C(clk_32f),
    .D(_000_[1]),
    .Q(IDLE_out[1])
  );
  DFF _112_ (
    .C(clk_32f),
    .D(_000_[2]),
    .Q(IDLE_out[2])
  );
  DFF _113_ (
    .C(clk_32f),
    .D(_000_[3]),
    .Q(IDLE_out[3])
  );
  DFF _114_ (
    .C(clk_32f),
    .D(_000_[4]),
    .Q(IDLE_out[4])
  );
  DFF _115_ (
    .C(clk_32f),
    .D(_000_[5]),
    .Q(IDLE_out[5])
  );
  DFF _116_ (
    .C(clk_32f),
    .D(_000_[6]),
    .Q(IDLE_out[6])
  );
  DFF _117_ (
    .C(clk_32f),
    .D(_000_[7]),
    .Q(IDLE_out[7])
  );
  DFF _118_ (
    .C(clk_32f),
    .D(_001_),
    .Q(active)
  );
  DFF _119_ (
    .C(clk_32f),
    .D(_002_[0]),
    .Q(bc_cnt[0])
  );
  DFF _120_ (
    .C(clk_32f),
    .D(_002_[1]),
    .Q(bc_cnt[1])
  );
  DFF _121_ (
    .C(clk_32f),
    .D(_002_[2]),
    .Q(bc_cnt[2])
  );
  DFF _122_ (
    .C(clk_32f),
    .D(_002_[3]),
    .Q(bc_cnt[3])
  );
endmodule