package com.heefan;

public class MallardDuck extends Duck {

    public MallardDuck() {
        flyBehavior = new FlyWithWings();

    }
    @Override
    public void display() {
        System.out.print("<MallardDuck> display");
    }
}
