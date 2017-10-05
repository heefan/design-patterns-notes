package com.heefan;

public abstract class Duck {
    FlyBehavior flyBehavior;

    void swim() {
        System.out.println("<Duck> swim");
    }

    abstract void display();

    public void setFlyBehavior(FlyBehavior fb) {
        flyBehavior = fb;
    }

    public void performFly() {
        flyBehavior.fly();
    }

}

