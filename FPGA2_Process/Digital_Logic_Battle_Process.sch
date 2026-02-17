<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_11" />
        <signal name="XLXN_1" />
        <signal name="p1_action_inp(1:0)" />
        <signal name="p2_action_inp(1:0)" />
        <signal name="reset" />
        <signal name="clk" />
        <signal name="XLXN_34(3:0)" />
        <signal name="XLXN_35(1:0)" />
        <signal name="XLXN_36(3:0)" />
        <signal name="XLXN_37(3:0)" />
        <signal name="hsync" />
        <signal name="vsync" />
        <signal name="red" />
        <signal name="green" />
        <signal name="blue" />
        <signal name="p1_action_inp(0)" />
        <signal name="p1_action_inp(1)" />
        <signal name="p1_action(0)" />
        <signal name="p1_action(1)" />
        <signal name="p2_action_inp(0)" />
        <signal name="p2_action_inp(1)" />
        <signal name="p2_action(0)" />
        <signal name="p2_action(1)" />
        <signal name="p1_action(1:0)" />
        <signal name="p2_action(1:0)" />
        <port polarity="Input" name="p1_action_inp(1:0)" />
        <port polarity="Input" name="p2_action_inp(1:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="hsync" />
        <port polarity="Output" name="vsync" />
        <port polarity="Output" name="red" />
        <port polarity="Output" name="green" />
        <port polarity="Output" name="blue" />
        <port polarity="Output" name="p1_action(1:0)" />
        <port polarity="Output" name="p2_action(1:0)" />
        <blockdef name="delay_3sec">
            <timestamp>2024-11-9T9:42:37</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Game">
            <timestamp>2024-11-9T16:21:56</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="clk_20MHz_to_25MHz">
            <timestamp>2024-11-9T9:49:59</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vga_controller">
            <timestamp>2024-11-9T15:58:32</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="delay_3sec" name="XLXI_1">
            <blockpin signalname="XLXN_11" name="clk" />
            <blockpin signalname="p1_action_inp(1:0)" name="p1_action(1:0)" />
            <blockpin signalname="p2_action_inp(1:0)" name="p2_action(1:0)" />
            <blockpin signalname="XLXN_1" name="delay_out" />
        </block>
        <block symbolname="Game" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="p1_action_inp(1:0)" name="p1_action(1:0)" />
            <blockpin signalname="p2_action_inp(1:0)" name="p2_action(1:0)" />
            <blockpin signalname="XLXN_37(3:0)" name="p1_hp(3:0)" />
            <blockpin signalname="XLXN_36(3:0)" name="p2_hp(3:0)" />
            <blockpin signalname="XLXN_35(1:0)" name="winner(1:0)" />
            <blockpin signalname="XLXN_34(3:0)" name="round(3:0)" />
        </block>
        <block symbolname="clk_20MHz_to_25MHz" name="XLXI_6">
            <blockpin signalname="clk" name="clk_in" />
            <blockpin signalname="XLXN_11" name="clk_out" />
        </block>
        <block symbolname="vga_controller" name="XLXI_10">
            <blockpin signalname="XLXN_11" name="clk_25MHz" />
            <blockpin signalname="XLXN_34(3:0)" name="round_in(3:0)" />
            <blockpin signalname="XLXN_37(3:0)" name="p1_hp(3:0)" />
            <blockpin signalname="XLXN_36(3:0)" name="p2_hp(3:0)" />
            <blockpin signalname="XLXN_35(1:0)" name="winner(1:0)" />
            <blockpin signalname="p1_action_inp(1:0)" name="p1_act(1:0)" />
            <blockpin signalname="p2_action_inp(1:0)" name="p2_act(1:0)" />
            <blockpin signalname="hsync" name="hsync" />
            <blockpin signalname="vsync" name="vsync" />
            <blockpin signalname="red" name="red" />
            <blockpin signalname="green" name="green" />
            <blockpin signalname="blue" name="blue" />
        </block>
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="p1_action_inp(0)" name="I" />
            <blockpin signalname="p1_action(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_21">
            <blockpin signalname="p1_action_inp(1)" name="I" />
            <blockpin signalname="p1_action(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="p2_action_inp(0)" name="I" />
            <blockpin signalname="p2_action(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="p2_action_inp(1)" name="I" />
            <blockpin signalname="p2_action(1)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="912" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1408" y="1248" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1328" y1="752" y2="752" x1="1312" />
            <wire x2="1328" y1="752" y2="1024" x1="1328" />
            <wire x2="1408" y1="1024" y2="1024" x1="1328" />
        </branch>
        <branch name="p1_action_inp(1:0)">
            <wire x2="624" y1="816" y2="816" x1="400" />
            <wire x2="928" y1="816" y2="816" x1="624" />
            <wire x2="624" y1="816" y2="1152" x1="624" />
            <wire x2="960" y1="1152" y2="1152" x1="624" />
            <wire x2="1408" y1="1152" y2="1152" x1="960" />
            <wire x2="960" y1="1152" y2="1808" x1="960" />
            <wire x2="2368" y1="1808" y2="1808" x1="960" />
        </branch>
        <branch name="p2_action_inp(1:0)">
            <wire x2="704" y1="880" y2="880" x1="400" />
            <wire x2="928" y1="880" y2="880" x1="704" />
            <wire x2="704" y1="880" y2="1216" x1="704" />
            <wire x2="1040" y1="1216" y2="1216" x1="704" />
            <wire x2="1408" y1="1216" y2="1216" x1="1040" />
            <wire x2="1040" y1="1216" y2="1872" x1="1040" />
            <wire x2="2368" y1="1872" y2="1872" x1="1040" />
        </branch>
        <branch name="reset">
            <wire x2="1408" y1="1088" y2="1088" x1="1392" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="912" y1="448" y2="448" x1="864" />
            <wire x2="912" y1="448" y2="752" x1="912" />
            <wire x2="928" y1="752" y2="752" x1="912" />
            <wire x2="2160" y1="448" y2="448" x1="912" />
            <wire x2="2160" y1="448" y2="1488" x1="2160" />
            <wire x2="2368" y1="1488" y2="1488" x1="2160" />
        </branch>
        <instance x="480" y="480" name="XLXI_6" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="480" y1="448" y2="448" x1="448" />
        </branch>
        <iomarker fontsize="28" x="400" y="816" name="p1_action_inp(1:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="880" name="p2_action_inp(1:0)" orien="R180" />
        <iomarker fontsize="28" x="448" y="448" name="clk" orien="R180" />
        <instance x="2368" y="1904" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_34(3:0)">
            <wire x2="1872" y1="1216" y2="1216" x1="1824" />
            <wire x2="1872" y1="1216" y2="1552" x1="1872" />
            <wire x2="2368" y1="1552" y2="1552" x1="1872" />
        </branch>
        <branch name="XLXN_35(1:0)">
            <wire x2="1920" y1="1152" y2="1152" x1="1824" />
            <wire x2="1920" y1="1152" y2="1744" x1="1920" />
            <wire x2="2368" y1="1744" y2="1744" x1="1920" />
        </branch>
        <branch name="XLXN_36(3:0)">
            <wire x2="2000" y1="1088" y2="1088" x1="1824" />
            <wire x2="2000" y1="1088" y2="1680" x1="2000" />
            <wire x2="2368" y1="1680" y2="1680" x1="2000" />
        </branch>
        <branch name="XLXN_37(3:0)">
            <wire x2="2064" y1="1024" y2="1024" x1="1824" />
            <wire x2="2064" y1="1024" y2="1616" x1="2064" />
            <wire x2="2368" y1="1616" y2="1616" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1088" name="reset" orien="R180" />
        <branch name="hsync">
            <wire x2="2784" y1="1488" y2="1488" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1488" name="hsync" orien="R0" />
        <branch name="vsync">
            <wire x2="2784" y1="1584" y2="1584" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1584" name="vsync" orien="R0" />
        <branch name="red">
            <wire x2="2784" y1="1680" y2="1680" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1680" name="red" orien="R0" />
        <branch name="green">
            <wire x2="2784" y1="1776" y2="1776" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1776" name="green" orien="R0" />
        <branch name="blue">
            <wire x2="2784" y1="1872" y2="1872" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1872" name="blue" orien="R0" />
        <branch name="p1_action_inp(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1360" type="branch" />
            <wire x2="352" y1="1360" y2="1360" x1="272" />
        </branch>
        <branch name="p1_action_inp(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1440" type="branch" />
            <wire x2="352" y1="1440" y2="1440" x1="272" />
        </branch>
        <instance x="352" y="1392" name="XLXI_20" orien="R0" />
        <instance x="352" y="1472" name="XLXI_21" orien="R0" />
        <branch name="p1_action(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1360" type="branch" />
            <wire x2="656" y1="1360" y2="1360" x1="576" />
        </branch>
        <branch name="p1_action(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1440" type="branch" />
            <wire x2="656" y1="1440" y2="1440" x1="576" />
        </branch>
        <branch name="p2_action_inp(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1552" type="branch" />
            <wire x2="352" y1="1552" y2="1552" x1="272" />
        </branch>
        <branch name="p2_action_inp(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1632" type="branch" />
            <wire x2="352" y1="1632" y2="1632" x1="272" />
        </branch>
        <instance x="352" y="1584" name="XLXI_24" orien="R0" />
        <instance x="352" y="1664" name="XLXI_25" orien="R0" />
        <branch name="p2_action(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1552" type="branch" />
            <wire x2="656" y1="1552" y2="1552" x1="576" />
        </branch>
        <branch name="p2_action(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1632" type="branch" />
            <wire x2="656" y1="1632" y2="1632" x1="576" />
        </branch>
        <branch name="p1_action(1:0)">
            <wire x2="480" y1="1760" y2="1760" x1="320" />
        </branch>
        <branch name="p2_action(1:0)">
            <wire x2="480" y1="1840" y2="1840" x1="320" />
        </branch>
        <iomarker fontsize="28" x="480" y="1760" name="p1_action(1:0)" orien="R0" />
        <iomarker fontsize="28" x="480" y="1840" name="p2_action(1:0)" orien="R0" />
    </sheet>
</drawing>