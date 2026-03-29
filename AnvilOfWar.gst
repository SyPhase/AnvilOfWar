<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-4d6c-ac3c-296b-de59" name="AnvilOfWar" battleScribeVersion="2.03" revision="2" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" authorName="Pierce Kester" authorContact="bulletgiraffe@gmail.com" authorUrl="bulletgiraffe.com" publicationId="5911-3a66-ec62-32e6">
  <categoryEntries>
    <categoryEntry name="Infantry" id="86d7-e31a-0e12-cc05" hidden="false"/>
    <categoryEntry name="Vehicle" id="892b-3ede-432c-1fff" hidden="false"/>
    <categoryEntry name="Hero" id="0a6c-1e81-5f9d-3240" hidden="false"/>
    <categoryEntry name="Faction Leader" id="0214-30a6-f341-ee7f" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Galactic Conquest" id="2936-ac7b-690d-0867" hidden="false">
      <categoryLinks>
        <categoryLink name="Faction Leader" hidden="false" id="270e-f516-3444-217a" targetId="0214-30a6-f341-ee7f"/>
        <categoryLink name="Hero" hidden="false" id="1e3c-b26d-347a-e0c3" targetId="0a6c-1e81-5f9d-3240"/>
        <categoryLink name="Infantry" hidden="false" id="716e-3e0f-6e70-7f94" targetId="86d7-e31a-0e12-cc05"/>
        <categoryLink name="Vehicle" hidden="false" id="6929-4402-aa89-689d" targetId="892b-3ede-432c-1fff"/>
      </categoryLinks>
    </forceEntry>
    <forceEntry name="Skirmish" id="42b1-ad19-3497-d664" hidden="false">
      <categoryLinks>
        <categoryLink name="Faction Leader" hidden="false" id="1d39-0ba6-6b69-12c8" targetId="0214-30a6-f341-ee7f">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="936e-b61f-292e-8573"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Hero" hidden="false" id="223a-a1e9-b803-ce0b" targetId="0a6c-1e81-5f9d-3240"/>
        <categoryLink name="Infantry" hidden="false" id="ade6-8517-3190-9892" targetId="86d7-e31a-0e12-cc05">
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="ede9-8696-9b24-d2b5"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Vehicle" hidden="false" id="7848-469f-6739-5a4e" targetId="892b-3ede-432c-1fff"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <costTypes>
    <costType name="points" id="b94c-fcb8-4a07-acd7" defaultCostLimit="500">
      <comment>currency?</comment>
    </costType>
  </costTypes>
  <profileTypes>
    <profileType name="Unit" id="a0cc-e27d-0e47-b400" hidden="false" kind="model">
      <characteristicTypes>
        <characteristicType name="HP" id="1d43-35c4-2ad8-ee02"/>
        <characteristicType name="MV" id="aa14-e1fc-a33b-8e17"/>
        <characteristicType name="SV" id="24b4-ca44-ffb5-c3f4"/>
        <characteristicType name="Footprint" id="0743-ed86-8e70-b53c"/>
      </characteristicTypes>
      <comment>Should Footprint be elsewhere?</comment>
    </profileType>
    <profileType name="Weapons" id="35f7-4412-69cb-9d6a" hidden="false" kind="weapon">
      <characteristicTypes>
        <characteristicType name="Range" id="8723-19bb-bcce-5f94"/>
        <characteristicType name="Attacks" id="0a3b-93a6-7ca6-c930"/>
        <characteristicType name="Accuracy" id="4bca-fe29-753e-511f"/>
        <characteristicType name="Armor Piercing" id="46da-1060-daef-3f00"/>
        <characteristicType name="Damage" id="f994-dfa3-122c-9cc5"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Abilities (Action)" id="7e76-2916-e877-fd40" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description" id="3437-636f-e6aa-d7ea"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapon Abilities" id="ed56-95ac-5582-8023" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description" id="c7ce-7c70-361a-78df"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Abilities (Passive)" id="4720-4964-f773-3509" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description" id="bc7d-10a5-15e8-e96d"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedRules>
    <rule name="Fly" id="6ff7-85fb-9f68-4584" hidden="false">
      <description>Units with [FLY] may move over any or all models and terrain but may not end its move on top of any models or impassable terrain.</description>
      <comment>Unit Rule.</comment>
    </rule>
    <rule name="Resist-" id="e899-0aa0-f2bb-f89d" hidden="false">
      <description>When units with [RESIST-KEYWORD X] are attacked by a unit of the corresponding [KEYWORD], subtract &apos;X&apos; from the attacking weapon&apos;s damage characteristic down to a minimum of 1 damage.</description>
      <comment>Unit Rule.</comment>
    </rule>
    <rule name="Presence-" id="c94f-5f31-a078-81ee" hidden="false">
      <description>For units with [PRESENCE-X], when counting models in the Securing Phase, count each model &apos;X&apos; times instead of once.</description>
      <comment>Unit Rule.</comment>
    </rule>
    <rule name="Stealthy" id="99b4-c1b6-4f40-4104" hidden="false">
      <description>When ranged weapons (besides area of effect weapons) target a unit with [STEALTHY], worsen the accuracy of the attacking weapon by 1 (accuracy threshold characteristic +1).</description>
      <comment>Unit Rule.</comment>
    </rule>
    <rule name="Crush-" id="ab49-c483-f2a1-aac8" hidden="false">
      <description>When a unit with [CRUSH-X] moves over an enemy unit, that enemy unit takes &apos;X&apos; damage.</description>
      <comment>Unit Rule.</comment>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile name="Steady" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="15ce-b674-f1f2-3638">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">If a unit performed a hold action instead of moving this turn, weapons with [STEADY] equipped in that unit improve their accuracy by 1 (accuracy threshold characteristic -1).</characteristic>
      </characteristics>
    </profile>
    <profile name="Stationary" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="58f9-d481-4347-5d3f">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">Weapons with [STATIONARY] cannot be selected to make attacks with if the equipped unit performed a move action this turn.</characteristic>
      </characteristics>
    </profile>
    <profile name="Indirect" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="f02a-6e30-e223-408e">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">Weapons with [INDIRECT] do not require line of sight to target an enemy unit, however are still required to be in range.</characteristic>
      </characteristics>
    </profile>
    <profile name="Anti-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="3ef8-04c7-6b24-f0ba">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">When weapons with [ANTI-KEYWORD X] target a unit of [KEYWORD] type, increase the damage of that weapon&apos;s attack by &apos;X.&apos;</characteristic>
      </characteristics>
    </profile>
    <profile name="Full-Auto-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="67df-4cd7-46d6-6f39">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">When weapons with [FULL-AUTO X] target a unit within half that weapon&apos;s range, increase this weapon&apos;s attacks characteristic by &apos;x.&apos;</characteristic>
      </characteristics>
    </profile>
    <profile name="Explosive-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="8b6a-3304-f70a-39f5">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">For each critical hit a weapon with [EXPLOSIVE-X] rolls, add &apos;x&apos; to the number of successful hits in the pool.</characteristic>
      </characteristics>
    </profile>
    <profile name="Area of Effect-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="56b7-65cc-8fd1-b35f">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">After completing the attack sequence with an [AREA OF EFFECT-X] weapon against a target, that weapon also resolves the attack sequence against each enemy unit within &apos;x&apos;&quot; of the target.  Those attacks do not have [AREA OF EFFECT-X] unless otherwise specified.</characteristic>
      </characteristics>
      <alias>AoE</alias>
    </profile>
    <profile name="Dangerous" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="426f-ee4f-6590-abf1">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">After completing the attack sequence with a [DANGEROUS] weapon against a target, resolve the attack sequence again but against the unit the weapon is equipped to changing the total number of attacks in the sequence to be the total number of failed hit rolls against the enemy target.  That attack do not have [DANGEROUS].</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <publications>
    <publication name="GitHub" id="5911-3a66-ec62-32e6" hidden="false" publisherUrl="https://github.com/SyPhase/AnvilOfWar" publisher="GitHub"/>
  </publications>
</gameSystem>
