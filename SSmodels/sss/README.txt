- SSS.v05.00

SSS-MC type model

doing MC runs and drawing values for steepness and depletion
  - steepness: unif(0.6, 0.9)
  - depletion: 1 - beta(alpha = 9.9, beta = 4.2)

includes total fishery removals
  - depletion index from 1900-2020

double normal selectivity for length in fishery (total removals)
  modified selectivity so ascending portion covers more larger sizes.

  change in selectivity for fishery in 2013-2014

variation in natural mortality by age (Lorenzen option. #_natM_type: = 2)

selectivity blocks for fishery: 1900-2013, 2014-2020

------------------------------------------------------------------------------


- SSS.v04.02 (SSSwMRIP)

SSS-MC type model

doing MC runs and drawing values for steepness and depletion
  - steepness beta(alpha = 9.9, beta = 4.2)
  - depletion 1 - unif(0.1, 0.5)

includes total fishery removals and MRIP index
  - depletion index from 1900-1982 and MRIP index after 1982


double normal selectivity for length in fishery (total removals) and survey (MRIP CPUE)
  modified selectivity so ascending portion covers more larger sizes.

  change in selectivity for fishery in 2013-2014

variation in natural mortality by age (Lorenzen option. #_natM_type: = 2)

selectivity blocks for MRIP CPUE: 1900-2013, 2014-2020


--------------------------------------------------------------------------------------
