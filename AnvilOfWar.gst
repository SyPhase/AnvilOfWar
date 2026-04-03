<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-4d6c-ac3c-296b-de59" name="Anvil Of War" battleScribeVersion="2.03" revision="9" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" authorName="Pierce Kester" authorContact="bulletgiraffe@gmail.com" authorUrl="bulletgiraffe.com" publicationId="5911-3a66-ec62-32e6">
  <categoryEntries>
    <categoryEntry name="Infantry" id="86d7-e31a-0e12-cc05" hidden="false"/>
    <categoryEntry name="Vehicle" id="892b-3ede-432c-1fff" hidden="false"/>
    <categoryEntry name="Hero" id="0a6c-1e81-5f9d-3240" hidden="false"/>
    <categoryEntry name="Faction Leader" id="0214-30a6-f341-ee7f" hidden="false"/>
    <categoryEntry name="Light" id="59ea-6f10-a33e-30f1" hidden="false"/>
    <categoryEntry name="Heavy" id="b9c5-1770-e28a-db52" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Galactic Conquest" id="2936-ac7b-690d-0867" hidden="false" sortIndex="2">
      <forceEntryLinks>
        <forceEntryLink name="Planetary Battle" id="047e-2347-ddc6-17ca" hidden="false" targetId="b29e-7c80-963e-ca97" type="forceEntry" sortIndex="1">
          <comment>Optional single fleet force for planetary battle</comment>
        </forceEntryLink>
        <forceEntryLink name="Planetary Fleet" id="b7b4-5355-c44b-ff58" hidden="false" targetId="f4f6-3a2d-b765-7af6" type="forceEntry" sortIndex="2">
          <comment>Whole fleet over one planet</comment>
        </forceEntryLink>
      </forceEntryLinks>
      <constraints>
        <constraint type="min" value="1" field="forces" scope="parent" shared="true" id="5b03-5eed-6f14-3ccb-min" includeChildSelections="false"/>
        <constraint type="max" value="1" field="forces" scope="parent" shared="true" id="5b03-5eed-6f14-3ccb-max" includeChildSelections="false"/>
      </constraints>
      <comment>Galaxy Map fleets and locations</comment>
    </forceEntry>
    <forceEntry name="Skirmish Battle" id="42b1-ad19-3497-d664" hidden="false" sortIndex="3">
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
      <comment>Single force for single battle</comment>
      <constraints>
        <constraint type="min" value="1" field="forces" scope="parent" shared="true" id="327f-c1d6-fe69-33da-min" includeChildSelections="false"/>
        <constraint type="max" value="1" field="forces" scope="parent" shared="true" id="327f-c1d6-fe69-33da-max" includeChildSelections="false"/>
      </constraints>
    </forceEntry>
    <forceEntry name="Planetary Battle" id="b29e-7c80-963e-ca97" hidden="false" sortIndex="1">
      <costs>
        <cost name="Unit Capacity" typeId="f7d6-c8d5-b008-4866" value="0"/>
        <cost name="points" typeId="b94c-fcb8-4a07-acd7" value="0"/>
      </costs>
      <categoryLinks>
        <categoryLink name="Faction Leader" hidden="false" id="5423-2360-3b88-988a" targetId="0214-30a6-f341-ee7f"/>
        <categoryLink name="Hero" hidden="false" id="2a39-aa71-9e8b-3a05" targetId="0a6c-1e81-5f9d-3240"/>
        <categoryLink name="Infantry" hidden="false" id="3fc1-e119-b81f-94ea" targetId="86d7-e31a-0e12-cc05"/>
        <categoryLink name="Vehicle" hidden="false" id="4897-fe22-8aa2-14f2" targetId="892b-3ede-432c-1fff"/>
      </categoryLinks>
      <comment>Single fleet force for planetary battle</comment>
    </forceEntry>
    <forceEntry name="Planetary Fleet" id="f4f6-3a2d-b765-7af6" hidden="false" sortIndex="4">
      <comment>Whole fleet over one planet</comment>
      <categoryLinks>
        <categoryLink name="Faction Leader" hidden="false" id="edec-e4d6-c5b7-1e8e" targetId="0214-30a6-f341-ee7f"/>
        <categoryLink name="Hero" hidden="false" id="e3b5-aa0f-34af-fe0d" targetId="0a6c-1e81-5f9d-3240"/>
        <categoryLink name="Infantry" hidden="false" id="4d89-adfa-23db-42b7" targetId="86d7-e31a-0e12-cc05"/>
        <categoryLink name="Vehicle" hidden="false" id="6926-d515-f74a-982b" targetId="892b-3ede-432c-1fff"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <costTypes>
    <costType name="Unit Capacity" id="f7d6-c8d5-b008-4866" defaultCostLimit="-1">
      <comment>Maximum Unit Capacity</comment>
    </costType>
    <costType name="currency" id="2439-1aa3-efd7-29d0" defaultCostLimit="-1">
      <comment>points</comment>
    </costType>
  </costTypes>
  <profileTypes>
    <profileType name="Unit" id="a0cc-e27d-0e47-b400" hidden="false" kind="model">
      <characteristicTypes>
        <characteristicType name="SV" id="24b4-ca44-ffb5-c3f4"/>
        <characteristicType name="DS" id="1535-83cf-b8fe-b1ce"/>
        <characteristicType name="HP" id="a109-7c01-200f-cc2d"/>
        <characteristicType name="MV" id="6972-eaad-7147-252f"/>
        <characteristicType name="Footprint" id="1a99-d265-660f-2eb3"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapons" id="35f7-4412-69cb-9d6a" hidden="false" kind="weapon">
      <characteristicTypes>
        <characteristicType name="R" id="8723-19bb-bcce-5f94" kind="annotation"/>
        <characteristicType name="Att" id="0a3b-93a6-7ca6-c930" kind="annotation"/>
        <characteristicType name="Acc" id="4bca-fe29-753e-511f" kind="annotation"/>
        <characteristicType name="AP" id="46da-1060-daef-3f00" kind="annotation"/>
        <characteristicType name="D" id="f994-dfa3-122c-9cc5" kind="annotation"/>
        <characteristicType name="Abilities" id="3c47-c04c-8dfd-a691" kind="longText"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Active (Special Abilities)" id="7e76-2916-e877-fd40" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description" id="3437-636f-e6aa-d7ea"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapon Abilities" id="ed56-95ac-5582-8023" hidden="false" kind="tag">
      <characteristicTypes>
        <characteristicType name="Description" id="c7ce-7c70-361a-78df"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Passive (Special Abilities)" id="4720-4964-f773-3509" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description" id="bc7d-10a5-15e8-e96d"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedRules>
    <rule name="Fly" id="6ff7-85fb-9f68-4584" hidden="false">
      <description>Models in this squad may move over all models and impassable terrain but may not end their move on models. This squad cannot be targeted by Melee weapons.</description>
      <comment>Unit Rule.</comment>
    </rule>
    <rule name="Resist-" id="e899-0aa0-f2bb-f89d" hidden="false">
      <description>When this squad is attacked by a squad matching [keyword type], subtract ‘x’ from the attacking weapon’s damage (D) characteristic down to a minimum of 1 damage.</description>
      <comment>Unit Rule.</comment>
      <alias>Resist</alias>
    </rule>
    <rule name="Presence-" id="c94f-5f31-a078-81ee" hidden="false">
      <description>In the securing phase, when counting infantry models within range of points, count models in this squad ‘x’ times instead of once.</description>
      <comment>Unit Rule.</comment>
      <alias>Presence</alias>
    </rule>
    <rule name="Stealthy" id="99b4-c1b6-4f40-4104" hidden="false">
      <description>Ranged weapons that target this squad worsen their accuracy by 1 for that attack.</description>
      <comment>Unit Rule.</comment>
    </rule>
    <rule name="Crush-" id="ab49-c483-f2a1-aac8" hidden="false">
      <description>When this squad performs a move, for each enemy squad that this squad moves over, those enemy squads each take ‘x’ damage.</description>
      <comment>Unit Rule.</comment>
      <alias>Crush</alias>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile name="Steady" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="15ce-b674-f1f2-3638">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">If the equipped squad performed a hold instead of a move this turn, improve this weapon’s accuracy (Acc) characteristic by 1.</characteristic>
      </characteristics>
    </profile>
    <profile name="Stationary" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="58f9-d481-4347-5d3f">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">If the equipped squad performed a move instead of a hold this turn, this weapon cannot be selected to attack.</characteristic>
      </characteristics>
    </profile>
    <profile name="Indirect" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="f02a-6e30-e223-408e">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">This weapon does not require line of sight to target an enemy squad within range.</characteristic>
      </characteristics>
    </profile>
    <profile name="Anti-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="3ef8-04c7-6b24-f0ba">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">When this weapon targets a squad matching [keyword type], add ‘x’ to its damage (D) characteristic.</characteristic>
      </characteristics>
      <alias>Anti</alias>
    </profile>
    <profile name="Full-Auto-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="67df-4cd7-46d6-6f39">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">When this weapon targets an enemy squad within half the range (R) characteristic, add ‘x’ to its attacks (Att) characteristic.</characteristic>
      </characteristics>
      <alias>Full-Auto</alias>
      <alias>Full Auto</alias>
    </profile>
    <profile name="Explosive-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="8b6a-3304-f70a-39f5">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">Each critical hit adds ‘x’ number of extra successful hits to the hit pool.</characteristic>
      </characteristics>
      <alias>Explosive</alias>
    </profile>
    <profile name="Area of Effect-" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="56b7-65cc-8fd1-b35f">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">After this weapon resolves the attack sequence against its target, another attack sequence takes place against each enemy unit within ‘x’ inches of the targeted unit.</characteristic>
      </characteristics>
      <alias>Area of Effect</alias>
      <alias>AoE</alias>
    </profile>
    <profile name="Dangerous" typeId="ed56-95ac-5582-8023" typeName="Weapon Abilities" hidden="false" id="426f-ee4f-6590-abf1">
      <characteristics>
        <characteristic name="Description" typeId="c7ce-7c70-361a-78df">After this weapon resolves the attack sequence, resolve the attack sequence again but targeting its own unit in which the total number of attacks to roll is equal to the number of misses made against the enemy unit in the original attack sequence.</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <publications>
    <publication name="GitHub" id="5911-3a66-ec62-32e6" hidden="false" publisherUrl="https://github.com/SyPhase/AnvilOfWar" publisher="GitHub"/>
  </publications>
</gameSystem>
