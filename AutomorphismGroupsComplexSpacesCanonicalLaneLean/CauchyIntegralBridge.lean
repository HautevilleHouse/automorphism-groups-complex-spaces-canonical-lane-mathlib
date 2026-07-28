import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : ComplexDomain
  contour : Contour domain.carrier
  function : domain.carrier → ℂ
  holomorphic : HolomorphicOn function domain.carrier
  integralFormula : ∀ z ∈ interior contour, function z = (1/(2πi)) * ∮_contour (function w)/(w - z) dw

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  holomorphicOn : C.holomorphic
  integralFormulaHolds : C.integralFormula

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.holomorphic ∧ C.integralFormula

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
  (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C :=
by
  exact And.intro E.holomorphicOn E.integralFormulaHolds

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse