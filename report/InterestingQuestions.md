### Potential Scientific Questions for a Brain Tumor MRI Project

1. **Which brain regions contribute most to tumor detection?**  
   Use Grad-CAM or SmoothGrad to identify anatomical regions where the model consistently focuses.

2. **Does the model rely on tumor shape, texture, or intensity?**  
   Train the model on original MRIs, edge-enhanced MRIs, and blurred MRIs to isolate what visual features matter most.

3. **Is the model robust to noise?**  
   Test robustness by adding Gaussian noise, rotations, and motion blur to assess generalization..

4. **Do small perturbations produce radically different saliency maps?**  
   Use SmoothGrad to measure gradient stability and sensitivity to minor input changes.

5. **How do different pretrained architectures compare?**  
   Evaluate multiple backbones (e.g., ResNet, EfficientNet, DenseNet) for stability and interpretability using SmoothGrad.

6. **Can we segment the tumor instead of just classifying?**  
   Explore segmentation using U-Net or other encoder–decoder architectures for pixel-level predictions.

7. **Frequency-space analysis of MRI features.**  
   Transform images into Fourier space to examine whether the model depends on high- or low-frequency components.
