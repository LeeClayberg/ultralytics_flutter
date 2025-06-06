package com.leeclayberg.ultralytics_flutter.models;

public class LocalYoloModel extends YoloModel {
    public final String modelPath;
    public final String metadataPath;

    public LocalYoloModel(String task, String format, String modelPath, String metadataPath) {
        super.task = task;
        super.format = format;
        this.modelPath = modelPath;
        this.metadataPath = metadataPath;
    }
}
