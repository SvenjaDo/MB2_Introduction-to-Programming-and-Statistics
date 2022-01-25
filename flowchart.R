#### creating a Flowchart in R #################################################


#### load packages: ############################################################

library(DiagrammeR)
        
# package documentation:
## https://cran.r-project.org/web/packages/DiagrammeR/DiagrammeR.pdf

# idea from:
# https://datascienceplus.com/how-to-build-a-simple-flowchart-with-r-diagrammer-package/



#### Explanation: ##############################################################

# Function: grVIZ("digraph flowchart{})
 ## graph: overall layout, themes of the plot
 ## node: the boxes in the flowchart 
   ### fontname: font of the graph
   ### style: overall theme 
   ### shape: shape of the box
   ### fillcolor: color of the box 
   ### margin: size of the box
 ## edge: the lines used connect eacth of the boxes

#### Creating the Graph ########################################################
g <- grViz("digraph flowchart{

      graph[rankdir = LR] # graph from left to right
  
      node[fontname= calibri, shape = rectangle, style = filled] # general node definitions 
      
      subgraph cluster_1 { # first subgraph
        graph[shape = rectangle]
        style = dashed 
        bgcolor = none # without fillcolor 
    
        label = 'Data (n=73)' # name of the first subgraph
        node[shape = folder, fillcolor = Linen, margin = 0.25] # theme for elements of the first subgrapgh
        A[label = '@@1'] # define node elements
        B[label = '@@2']
      }
      
  
     subgraph cluster_2 { # second subgraph
        graph[shape = rectangle]
        style = dashed
        bgcolor = none
    
        label = 'Pre-processing'
        node[shape = rectangle, fillcolor = lightgrey, margin = 0.1]
        C[label = '@@3']
        D[label = '@@4']
     }
     
       subgraph cluster_6 { 
        graph[shape = rectangle]
        style = dashed
        bgcolor = none
    
        label = 'Data Analysis'
        node[shape = rectangle, fillcolor = lavender, margin = 0.25]
        
      subgraph cluster_3 { # third subgraph
        graph[shape = rectangle]
        style = dashed
        bgcolor = none
    
        label = 'Analysis I'
        node[shape = rectangle, fillcolor = lavender, margin = 0.25]
        E[label = '@@5']
      }
      
      subgraph cluster_4 { # third subgraph
        graph[shape = rectangle]
        style = dashed
        bgcolor = none
    
        label = 'Analysis II'
        node[shape = rectangle, fillcolor = lavender, margin = 0.25]
        F[label = '@@6']
      }
      
      subgraph cluster_5 { # fourth subgraph
        graph[shape = rectangle]
        style = dashed
        bgcolor = none
    
        label = 'Analysis III'
        node[shape = rectangle, fillcolor = lavender, margin = 0.25]
        G[label = '@@7']
      }
       }
  
      # set up node layout:  
      edge[color = black, arrowhead = vee, arrowsize = 1.25] # theme of the arrows
      A -> C;
      B -> D; 
      C -> E; 
      {D,E} -> G;
      {G,D} -> F; 
      
      }
      [1]: 'Site Parameters \\n (FIS Broker)' # \\n for linebreak
      [2]: 'NO_2 \\n Measurements \\n (2019-2020)'
      [3]: 'Standartization, \\n Log-transformation '
      [4]: 'Pre-processing'
      [5]: 'Clustering'
      [6]: 'ANOVA'
      [7]: 'Regression'
      [8]: 'Results'
      ")

#### Export graph: #############################################################

setwd("C:/Users/49152/Documents/Universitas/Master_EAGLE/SOS1/Greenroom/")
png("Nitro_flowchart.png")
g
dev.off()
