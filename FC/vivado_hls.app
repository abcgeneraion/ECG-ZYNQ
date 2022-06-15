<project xmlns="com.autoesl.autopilot.project" top="fc" name="FC">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../test_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="FC/fc.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2_pipeline" status="inactive"/>
        <solution name="solution3_unroll" status="inactive"/>
        <solution name="solution2_rewind_pipeline" status="active"/>
    </solutions>
</project>

