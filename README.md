# u-segment
u-segment is a Matlab software package to do 2D cell segmentation. This package provides a series of methods to create masks for the movie which separate objects (e.g. cells) from the background. Masks are binary images which contain 1 where there is an object of interest (cell), and 0 where there is background.

### Associated papers
[**Granger-causal inference of the lamellipodial actin regulator hierarchy by live cell imaging without perturbation**](https://doi.org/10.1016/j.cels.2022.05.003), *Cell Systems*, 2022, 13(6):471-487.e8, written by Jungsik Noh, Tadamoto Isogai, Joseph Chi, Kushal Bhatt, [Gaudenz Danuser](https://www.danuserlab-utsw.org/).

[**Functional Hierarchy of Redundant Actin Assembly Factors Revealed by Fine-Grained Registration of Intrinsic Image Fluctuations**](https://doi.org/10.1016/j.cels.2015.07.001), *Cell Systems*, 2015, 1(1):37-50, written by Kwonmoo Lee, Hunter L. Elliott, Youbean Oak, Alex Groisman, Jessica D. Tytell, [Gaudenz Danuser](https://www.danuserlab-utsw.org/).

### Workflow
It consists of 4 steps, including optional steps, to create cell masks:

1. Generate Summation Channel.
2. MSA (Multi-Scale Automatic) Segmentation.
3. Trembling Correction.
4. Mask Refinement.

----------------------
### Danuser Lab Links
[Danuser Lab Website](https://www.danuserlab-utsw.org/)

[Software Links](https://github.com/DanuserLab/)
