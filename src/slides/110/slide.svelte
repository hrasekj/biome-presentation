<script lang="ts">
  import MainContent from '$lib/components/MainContent.svelte'
  import SourceLink from '$lib/components/SourceLink.svelte'
  import { Transition } from '@animotion/core'
</script>

<MainContent title="Závěrem">
  <Transition>
    <ul class="grid list-none gap-6 text-left">
      <li>
        <SourceLink href="https://biomejs.dev/" label="Biome homepage" />
      </li>
      <li>
        <SourceLink href="https://github.com/biomejs/biome/discussions/1649" label="RFC: Biome plugins #1649" />
      </li>
      <li>
        <SourceLink href="https://github.com/biomejs/biome/issues/3187" label="☂️ Type-aware linter #3187" />
      </li>
      <li>
        <SourceLink href="https://github.com/biomejs/biome/issues/2455" label="☂️ Biome - current developments #2455" />
      </li>
      <li>
        <SourceLink
          href="https://github.com/c100k/rebootx-on-prem/pull/78/files"
          label="chore: replace eslint by biome #78"
        />
      </li>
      <li>
        <SourceLink
          href="https://dev.azure.com/DPDProjects/DPD%20Universe/_git/pickup-map-react"
          label="Qest DPD: pickup-map-react"
        />
      </li>
    </ul>
  </Transition>
</MainContent>
