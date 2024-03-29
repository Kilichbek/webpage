---
layout: project
permalink: /hypercgan/
title: 	Adversarial Text to Continuous Image Generation
description: "HyperCGAN: Adversarial Text to Continuous Image Generation"
nav: false
nav_order: 5
---

Existing GAN-based text-to-image models treat images as 2D pixel arrays. 
In this paper, we approach the text-to-image task from a different perspective, 
where a 2D image is represented as an implicit neural representation (INR). 
We show that straightforward conditioning of the unconditional INR-based GAN method 
on text inputs is not enough to achieve good performance. We propose a word-level attention-based 
weight modulation operator that controls the generation process of INR-GAN based on hypernetworks. 
Our experiments on benchmark datasets show that HyperCGAN achieves competitive performance 
to existing pixel-based methods and retains the properties of continuous generative models.
