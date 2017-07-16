/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javafx;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;
import javafx.stage.Stage;

/**
 *
 * @author user
 */
public class JavaFx extends Application {
    
    @Override
    public void start(Stage primaryStage) {
                
        StackPane root = new StackPane();
        
        //add a leaf node
        Circle cir = new Circle(200, 200, 100);
        cir.setFill(Color.CORAL);
        root.getChildren().add(cir);
                
        Scene scene = new Scene(root, 400, 400);
        
        primaryStage.setTitle("First Scene");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
