package edu.matc.entity;

import static org.junit.Assert.*;
import org.apache.log4j.*;
import org.junit.Test;
import java.lang.Enum;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StatusTest {


    private final Logger log = Logger.getLogger(this.getClass());

    List<String> enumNames = Stream.of(Enum.values())
            .map(Enum::name)
            .collect(Collectors.toList());

    @Test
    public void testEnum() {
        Integer enumSize = enumList.size();
        assertEquals("The Values are the same",enumSize, Integer.valueOf(26));
    }





}