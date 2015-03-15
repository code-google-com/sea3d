## SEA3D 1.6 ##
### Up ###
  * File Struct 3.0 (Final)
  * - Based for cross-platform
  * - Optimization for texture and shaders
  * - Auto rename
  * - Full support for ATF Textures
  * - New Texture Animation System
  * - Local / Global Animation for SEA3D Animation
  * - Load and Mapping SEA3D File for big scenes (Load a single model if you want)
  * - Dynamic Light Picker (Away3D)
  * - Dynamic Fog and Shadows (Away3D)

### Fix ###
  * - Dummy, Target Export
  * - Other minor fixes

## SEA3D 1.5 ##
### Up ###
  * File Struct 2.0
  * - Faster to load and reduced file size
  * - Direct Mesh Loader (no parse in runtime)
  * - Limit of vertices extended of 65 thousand to 4 billion
  * - Index or named references with real file formats (allows splitting SEA3D in multiple files)
  * Export Sprite3D
  * New Instancing Technology (instancing every repeated object automatically)
  * Ansyn Texture Loader
  * New Morph Engine for GPU/CPU (+1000 slots)
  * Skin with Morph
  * New Interpolation Engine (faster with on/off interpolation)
  * Animation Range by Custom Sequences
  * Export Line with Scene Hierarchy
### Fix ###
  * SEA3D Player | Detail of errors on the GPU
  * SEA3D Player | (Error #1125) for vertex limit
  * SEA3D Exporter | Export only Animations (disabling Mesh exporter for example)
  * SEA3D Exporter | Auto Detect First UV Mapping
  * SEA3D Exporter | Instance Skeleton Animation

---

## SEA3D 1.4.1 ##
### Up ###
  * Face Normals

---

## SEA3D 1.4 ##
### Up ###
  * Animation Takes
  * Runtime CubeReflection and PlanarReflection
  * Vertex Animation
  * Ink Paint Shader
  * Custom Object Config (SEA3D Tag)
  * Snapshot (Get current geometry of the scene)
### Fix ###
  * Improvement Sound3D Exporter

---

## SEA3D 1.3.1 ##
### Up ###
  * Multilayer Texture + 26 Blend Mode
  * Custom Attributes
### Fix ###
  * Tile Texture (Repeat Texture or not)

---

## SEA3D 1.3 ##
### Up ###
  * Export Scene Hierarchy with Joints
  * Stream Loader Method (Progressive Loader)
  * Export Morph and Morph Animation
  * Export Sound3D and SoundMixer3D
  * Export Dummy and Targets
  * Export Path (Line)
  * Export InkPaint Material
  * Add Fog Effect
  * JointObject (Link object in a Bone)
### Fix ###
  * New algorithm for skin export
  * New algorithm for animation export
  * New algorithm for data compression
  * Fully compatible with 3dsMax 9

---

## SEA3D 1.1 ##
### Up ###
  * Export Normals
  * Export Smoothing Groups
  * Export Light Attenuation
  * Auto Convert XYZ to XZY Euler Rotation
  * Optimized Animation Loader
  * Added ColorBalance and Levels Post-Processing filter
### Fix ###
  * Scene backup
  * Export only environment
  * Export complex instances
  * DiffuseColor Material
  * Real mesh export

---

## SEA3D 1.0 - Features ##
### Up ###
  * Export Mesh
  * Export Skeleton
  * Export Animation (Texture, Skeleton, Mesh and Objects)
  * Export Multichannel Geometry
  * Export Texture and Material (DiffuseMap, SpecularMap, NormalMap, CubemapReflection, CubemapRefraction, FresnelReflection)
  * Export Light
  * Export Camera
  * Export LightMap and DetailMap