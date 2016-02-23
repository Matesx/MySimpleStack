package dcll.moug.MySimpleStack;

import junit.framework.Assert;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class SimpleStackImplTest {

    SimpleStack simpleStack;

    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void testIsEmpty() throws Exception {

    }

    @Test
    public void testGetSize() throws Exception {
        Assert.assertEquals(0,simpleStack.getSize());
        String element1="toto";
        simpleStack.push(new Item(new String(element1)));
        simpleStack.push(new Item(new String(element1+"2")));
        Assert.assertEquals(2,simpleStack.getSize());

    }

    @Test
    public void testPush() throws Exception {
        Item ita = new Item(new Integer(8));
        Assert.assertEquals(0,simpleStack.getSize());
        simpleStack.push(ita);
        Assert.assertEquals(1,simpleStack.getSize());
        Item o = simpleStack.peek();
        Assert.assertTrue(o.getValue() instanceof Integer);
        Integer integer = (Integer)o.getValue();
        Assert.assertEquals(8,integer.intValue());
        Assert.assertEquals(ita.getValue(),integer);
    }

    @Test
    public void testPeek() throws Exception {
        Item ita = new Item(new Integer(8));
        Assert.assertEquals(0,simpleStack.getSize());
        simpleStack.push(ita);
        Assert.assertEquals(1,simpleStack.getSize());
        Item o = simpleStack.peek();
        Assert.assertEquals(1,simpleStack.getSize());
        Assert.assertTrue(o.getValue() instanceof Integer);
        Integer integer = (Integer)o.getValue();
        Assert.assertEquals(8,integer.intValue());
        Assert.assertEquals(ita.getValue(),integer);
    }

    @Test
    public void testPop() throws Exception {

    }
}