# BSAS and MBSAS Clustering Algorithm Implementation

In this project, I implement the Basic Sequential Algorithmic Scheme (BSAS) and the Modified BSAS (MBSAS) clustering algorithms outlined in the following [article](http://cs.joensuu.fi/pages/oili/PR/?a=Some__Material&b=Sequential__Clustering); if the page goes down, I've also taken a screenshot of the page (see AlgorithmArticle.png). 

For both of these implementations, you can provided a set of points one-by-one and it will output a list of integers where each integer represents the cluster that the corresponding point belongs to. An improvement to make would be to display the output in a visualization. 

Additionally, I looked at how the order of introduction of points affects the clusters created. In the TestScript.m, you will find commented out 3 sets of points for each algorithm. These 3 sets of points are the exact same points, just scrambled in different orders. An improvement would be to always randomize the order of the points. 