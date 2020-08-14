package com.demo;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;


public class SampleTest {

    Sample sample = new Sample();

    @Test
    public void testIsActive(){
        Assert.assertEquals(sample.isActive(), true);
    }
}
