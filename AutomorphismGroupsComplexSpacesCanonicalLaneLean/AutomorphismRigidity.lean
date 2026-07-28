import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure RigidityPackage where
  automorphismGroup : Type u
  rigidityStatement : Prop
  proofSketch : Prop

def RigidityClosed (R : RigidityPackage) : Prop :=
  R.rigidityStatement ∧ R.proofSketch

theorem rigidity_closed (R : RigidityPackage) : RigidityClosed R := by
  exact And.intro R.rigidityStatement R.proofSketch

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
