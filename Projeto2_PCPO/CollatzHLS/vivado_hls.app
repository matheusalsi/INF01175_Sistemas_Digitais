<project xmlns="com.autoesl.autopilot.project" name="CollatzHLS" top="Collatz">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../CollatzC/Collatztb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="CollatzHLS/CollatzC/Collatz.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="CollatzHLS/CollatzC/Collatz.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="CollatzHLS" status="active"/>
    </solutions>
</project>

