package com.leeclayberg.ultralytics_flutter.models;

import java.util.ArrayList;

public abstract class YoloModel {
    public final ArrayList<String> labels = new ArrayList<>();
    public String task;
    public String format;
}