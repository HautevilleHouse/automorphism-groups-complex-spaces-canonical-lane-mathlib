import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AutGroupBridgeLemmas
import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AutGroupGateLemmas

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

def ConstrainedAutGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_autgroup_endgame (A : AdmissibleClass) :
    ConstrainedAutGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
