package dcll.moug.MySimpleStack;

/**
 * Created by 21307329 on 23/02/2016.
 */
public class Item {
    private Object value;

    Item(Object value){
        setValue(value);
    }


    public Object getValue(){
        return value;
    }

    public void setValue(Object value){
        this.value = value;
    }
}
