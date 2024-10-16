<script module>
  import { defineProps } from '@animotion/core'

  export const props = defineProps({
    class: 'h-full pt-44 pb-24 px-24',
  })
</script>

<script lang="ts">
  import MainContent from '$lib/components/MainContent.svelte'
  import { Transition } from '@animotion/core'
</script>

<MainContent title="Současnost">
  <div class="flex flex-col gap-10 text-left">
    <div class="w-full"></div>

    <div class="grid gap-4 pb-8">
      <Transition>srpen 2024</Transition>
      <Transition class="pl-6">Vychází verze 1.9.0</Transition>
      <Transition class="pl-6">
        <div class="grid gap-2" style="font-size:.9em">
          <p>GraphQL stable</p>
          <p>search command</p>
          <p>.editorconfig</p>
        </div>
      </Transition>
    </div>

    <Transition>
      <img
        alt="Monthly downloads"
        src="https://biomejs.dev/_astro/biome-monthly-npm-downloads.BDqAA5ti_scOLS.svg"
        class="w-full"
      />
    </Transition>
  </div>
</MainContent>
