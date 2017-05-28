package com.tests;


import java.util.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author nkaka
 */
public class TestArrays {
    public static void main(String[] x){
        //One();
        Two();
    }
    public static void One(){
        Collection listOne = new ArrayList(Arrays.asList("milan","dingo", "elpha", "hafil", "meat", "iga", "neeta.peeta"));
        Collection listTwo = new ArrayList(Arrays.asList("hafil", "iga", "binga", "mike", "dingo"));

        listOne.retainAll( listTwo );
        System.out.println( listOne );
        System.out.println(listTwo);
    }
    public static void Two(){
        Collection<String> listOne = Arrays.asList("milan","iga",
                                                    "dingo","iga",
                                                    "elpha","iga",
                                                    "hafil","iga",
                                                    "meat","iga", 
                                                    "neeta.peeta","iga");

          Collection<String> listTwo = Arrays.asList("hafil",
                                                     "iga",
                                                     "binga", 
                                                     "mike", 
                                                     "dingo","dingo","dingo");

          Collection<String> similar = new HashSet<String>( listOne );
          Collection<String> different = new HashSet<String>();
          different.addAll( listOne );
          different.addAll( listTwo );

          similar.retainAll( listTwo );
          different.removeAll( similar );

          System.out.printf("One:%s%nTwo:%s%nSimilar:%s%nDifferent:%s%n", listOne, listTwo, similar, different);
    }
}
