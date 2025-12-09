In this project we want to compare the accuracies and interpretations of two different neural networks on the ABIDE Preprocessed dataset, which is an autism brain imaging dataset. It contains MRI images of patients with two classes, autism and control. We start from the preprocessed data where the fMRI images have already been turned into regions of interest using brain atlases. This lets us look at the activity of each region separately for 116 regions in total. The ABIDE dataset also includes phenotypic information such as age and gender which we can feed into our neural networks as extra features.

Since an fMRI scan is basically a video over time, we then summarise the time series in each region. We use the correlation between pairs of regional time series to build a connectivity matrix across the whole brain, giving a $116 \times 116$ correlation matrix for each subject. This defines our main data processing pipeline.

Using this, we first build a graph neural network, more specifically a graph convolutional network. The regions of interest become the nodes of the graph, and the connectivity matrix gives the edge weights, where each edge strength is the correlation between two regions. Each node also carries the phenotypic features of the patient. This way the model can use both brain connectivity and subject context, and we expect it to perform better than a standard convolutional model.

In parallel we try a three dimensional convolutional neural network that takes the fMRI images directly, or possibly some averaged version of the voxel values, as its input. Comparing the performance of the graph model and the convolutional model should highlight the potential of graph models for brain networks, and connect the idea of how brain regions communicate with the way the graph model passes messages across neighbours and gradually builds up a global representation.

Finally we look at interpretability for both neural networks. We want to compare how easy it is to understand what each network has learned and which brain regions drive its predictions. For this we plan to use methods such as SmoothGrad and similar saliency approaches. To decide which interpretation methods actually work best we will read the literature on saliency metrics and use those scores to judge the quality and reliability of the explanations.


<img width="897" height="382" alt="image" src="https://github.com/user-attachments/assets/89d59ef3-27cb-43bd-9a5c-4e45a07f91a6" />


## References:
Original Github Idea:  https://github.com/YilanDong19/Machine-learning-with-ABIDE/tree/main

[1] Rakić, Mladen, Mariano Cabezas, Kaisar Kushibar, Arnau Oliver, and Xavier Lladó. 2020. ‘Improving the Detection of Autism Spectrum Disorder by Combining Structural and Functional MRI Information’. NeuroImage: Clinical 25(November 2019). doi: 10.1016/j.nicl.2020.102181.

[2] Parisot, Sarah, Sofia Ira Ktena, Enzo Ferrante, Matthew Lee, Ricardo Guerrero, Ben Glocker, and Daniel Rueckert. 2018. ‘Disease Prediction Using Graph Convolutional Networks: Application to Autism Spectrum Disorder and Alzheimer’s Disease’. Medical Image Analysis 48:117–30. doi: 10.1016/j.media.2018.06.001.

[3] Huang, Yongxiang, and Albert C. S. Chung. 2020. ‘Edge-Variational Graph Convolutional Networks for Uncertainty-Aware Disease Prediction’. Lecture Notes in Computer Science (Including Subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics) 12267 LNCS:562–72. doi: 10.1007/978-3-030-59728-3_55.

[4] Thomas G. Dietterich. 2000. ‘Ensemble Methods in Machine Learning’. Multiple Classifier Systems.

[5] Kamnitsas, Konstantinos, Wenjia Bai, Enzo Ferrante, Steven McDonagh, Matthew Sinclair, Nick Pawlowski, Martin Rajchl, Matthew Lee, Bernhard Kainz, Daniel Rueckert, and Ben Glocker. 2017. ‘Ensembles of Multiple Models and Architectures for Robust Brain Tumour Segmentation’.

[6] Jean-Philippe Fortin, Drew Parker, Birkan Tunc, Takanori Watanabe, Mark A Elliott, Kosha Ruparel, David R Roalf, Theodore D Satterthwaite, Ruben C Gur, Raquel E Gur, Robert T Schultz, Ragini Verma, Russell T Shinohara. Harmonization Of Multi-Site Diffusion Tensor Imaging Data. NeuroImage, 161, 149-170, 2017

[7]https://braingraph.org/
