<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="p1_btn(0)" />
        <signal name="p1_btn(1)" />
        <signal name="p1_btn(2)" />
        <signal name="p2_btn(0)" />
        <signal name="p2_btn(1)" />
        <signal name="p2_btn(2)" />
        <signal name="p1_action(1)" />
        <signal name="p1_action(0)" />
        <signal name="p2_action(1)" />
        <signal name="p2_action(0)" />
        <signal name="p1_action(1:0)" />
        <signal name="reset" />
        <signal name="p1_btn(2:0)" />
        <signal name="p2_btn(2:0)" />
        <signal name="XLXN_122" />
        <signal name="XLXN_123(1:0)" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126(1:0)" />
        <signal name="XLXN_127" />
        <signal name="XLXN_128(1:0)" />
        <signal name="XLXN_129" />
        <signal name="XLXN_130" />
        <signal name="XLXN_131" />
        <signal name="buzzer" />
        <signal name="clk" />
        <signal name="p2_action(1:0)" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134(1:0)" />
        <port polarity="Output" name="p1_action(1:0)" />
        <port polarity="Input" name="p1_btn(2:0)" />
        <port polarity="Input" name="p2_btn(2:0)" />
        <port polarity="Output" name="buzzer" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="p2_action(1:0)" />
        <blockdef name="Action_Selector">
            <timestamp>2024-11-9T11:57:48</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="Action_reset">
            <timestamp>2024-11-9T11:45:11</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Buzzer_Controller">
            <timestamp>2024-11-10T16:51:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="Action_Selector" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="A_btn" />
            <blockpin signalname="XLXN_2" name="L_btn" />
            <blockpin signalname="XLXN_3" name="C_btn" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="p1_action(1)" name="D1" />
            <blockpin signalname="p1_action(0)" name="D0" />
        </block>
        <block symbolname="Action_Selector" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="A_btn" />
            <blockpin signalname="XLXN_5" name="L_btn" />
            <blockpin signalname="XLXN_4" name="C_btn" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="p2_action(1)" name="D1" />
            <blockpin signalname="p2_action(0)" name="D0" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="p1_btn(0)" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="p1_btn(2)" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="p1_btn(1)" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="p2_btn(1)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="p2_btn(2)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="p2_btn(0)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="Action_reset" name="XLXI_10">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="p1_action(1:0)" name="p1_action(1:0)" />
            <blockpin signalname="p2_action(1:0)" name="p2_action(1:0)" />
            <blockpin signalname="reset" name="delay_out" />
        </block>
        <block symbolname="Buzzer_Controller" name="XLXI_56">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="p1_action(1:0)" name="action(1:0)" />
            <blockpin signalname="XLXN_130" name="buzzer" />
        </block>
        <block symbolname="Buzzer_Controller" name="XLXI_57">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="p2_action(1:0)" name="action(1:0)" />
            <blockpin signalname="XLXN_131" name="buzzer" />
        </block>
        <block symbolname="or2" name="XLXI_58">
            <blockpin signalname="XLXN_131" name="I0" />
            <blockpin signalname="XLXN_130" name="I1" />
            <blockpin signalname="buzzer" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="720" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1280" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1296" y1="432" y2="432" x1="1264" />
        </branch>
        <instance x="1040" y="464" name="XLXI_4" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1296" y1="560" y2="560" x1="1264" />
        </branch>
        <instance x="1040" y="592" name="XLXI_5" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1296" y1="496" y2="496" x1="1264" />
        </branch>
        <instance x="1040" y="528" name="XLXI_6" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1280" y1="976" y2="976" x1="1248" />
        </branch>
        <instance x="1024" y="1008" name="XLXI_7" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1280" y1="1040" y2="1040" x1="1248" />
        </branch>
        <instance x="1024" y="1072" name="XLXI_8" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1280" y1="912" y2="912" x1="1248" />
        </branch>
        <instance x="1024" y="944" name="XLXI_9" orien="R0" />
        <branch name="p1_btn(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="432" type="branch" />
            <wire x2="1040" y1="432" y2="432" x1="1008" />
        </branch>
        <branch name="p1_btn(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="496" type="branch" />
            <wire x2="1040" y1="496" y2="496" x1="1008" />
        </branch>
        <branch name="p1_btn(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="560" type="branch" />
            <wire x2="1040" y1="560" y2="560" x1="1008" />
        </branch>
        <branch name="p2_btn(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="912" type="branch" />
            <wire x2="1024" y1="912" y2="912" x1="1008" />
        </branch>
        <branch name="p2_btn(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="976" type="branch" />
            <wire x2="1024" y1="976" y2="976" x1="1008" />
        </branch>
        <branch name="p2_btn(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1040" type="branch" />
            <wire x2="1024" y1="1040" y2="1040" x1="1008" />
        </branch>
        <branch name="p1_action(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="432" type="branch" />
            <wire x2="1696" y1="432" y2="432" x1="1680" />
        </branch>
        <branch name="p1_action(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="496" type="branch" />
            <wire x2="1696" y1="496" y2="496" x1="1680" />
        </branch>
        <branch name="p2_action(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="912" type="branch" />
            <wire x2="1680" y1="912" y2="912" x1="1664" />
        </branch>
        <branch name="p2_action(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="976" type="branch" />
            <wire x2="1680" y1="976" y2="976" x1="1664" />
        </branch>
        <branch name="reset">
            <wire x2="1296" y1="688" y2="688" x1="720" />
            <wire x2="720" y1="688" y2="1168" x1="720" />
            <wire x2="1280" y1="1168" y2="1168" x1="720" />
            <wire x2="720" y1="1168" y2="1264" x1="720" />
            <wire x2="2704" y1="1264" y2="1264" x1="720" />
            <wire x2="2704" y1="1264" y2="1824" x1="2704" />
            <wire x2="2704" y1="1824" y2="1824" x1="2560" />
        </branch>
        <instance x="2176" y="1984" name="XLXI_10" orien="R0">
        </instance>
        <branch name="p1_btn(2:0)">
            <wire x2="544" y1="304" y2="496" x1="544" />
        </branch>
        <branch name="p2_btn(2:0)">
            <wire x2="640" y1="304" y2="496" x1="640" />
        </branch>
        <iomarker fontsize="28" x="736" y="1824" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1456" name="p1_action(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2096" y="1504" name="p2_action(1:0)" orien="R0" />
        <iomarker fontsize="28" x="544" y="304" name="p1_btn(2:0)" orien="R270" />
        <iomarker fontsize="28" x="640" y="304" name="p2_btn(2:0)" orien="R270" />
        <branch name="p1_action(1:0)">
            <wire x2="1968" y1="1456" y2="1456" x1="1904" />
            <wire x2="2096" y1="1456" y2="1456" x1="1968" />
            <wire x2="1968" y1="1456" y2="1888" x1="1968" />
            <wire x2="2064" y1="1888" y2="1888" x1="1968" />
            <wire x2="2176" y1="1888" y2="1888" x1="2064" />
            <wire x2="2064" y1="1888" y2="2256" x1="2064" />
            <wire x2="2176" y1="2256" y2="2256" x1="2064" />
        </branch>
        <instance x="2176" y="2288" name="XLXI_56" orien="R0">
        </instance>
        <instance x="2176" y="2608" name="XLXI_57" orien="R0">
        </instance>
        <instance x="2720" y="2464" name="XLXI_58" orien="R0" />
        <branch name="XLXN_130">
            <wire x2="2640" y1="2192" y2="2192" x1="2560" />
            <wire x2="2640" y1="2192" y2="2336" x1="2640" />
            <wire x2="2720" y1="2336" y2="2336" x1="2640" />
        </branch>
        <branch name="XLXN_131">
            <wire x2="2640" y1="2512" y2="2512" x1="2560" />
            <wire x2="2640" y1="2400" y2="2512" x1="2640" />
            <wire x2="2720" y1="2400" y2="2400" x1="2640" />
        </branch>
        <branch name="buzzer">
            <wire x2="3008" y1="2368" y2="2368" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="2368" name="buzzer" orien="R0" />
        <branch name="p2_action(1:0)">
            <wire x2="2016" y1="1504" y2="1504" x1="1904" />
            <wire x2="2096" y1="1504" y2="1504" x1="2016" />
            <wire x2="2016" y1="1504" y2="1952" x1="2016" />
            <wire x2="2096" y1="1952" y2="1952" x1="2016" />
            <wire x2="2176" y1="1952" y2="1952" x1="2096" />
            <wire x2="2096" y1="1952" y2="2576" x1="2096" />
            <wire x2="2176" y1="2576" y2="2576" x1="2096" />
        </branch>
        <branch name="clk">
            <wire x2="960" y1="1824" y2="1824" x1="736" />
            <wire x2="2176" y1="1824" y2="1824" x1="960" />
            <wire x2="960" y1="1824" y2="2192" x1="960" />
            <wire x2="2176" y1="2192" y2="2192" x1="960" />
            <wire x2="960" y1="2192" y2="2512" x1="960" />
            <wire x2="2176" y1="2512" y2="2512" x1="960" />
        </branch>
    </sheet>
</drawing>