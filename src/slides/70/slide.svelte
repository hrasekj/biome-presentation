<script module>
  import { defineProps } from '@animotion/core'
  import thrirdPartyExt from '$lib/assets/third-party_extensions.png'

  export const props = defineProps({
    class: 'h-full pt-44 pb-24 px-24',
  })
</script>

<script lang="ts">
  import MainContent from '$lib/components/MainContent.svelte'
  import { Transition } from '@animotion/core'
</script>

<MainContent title="Co nabízí">
  <div class="flex flex-col gap-10 text-left">
    <div class="w-full pb-12"></div>

    <div class="grid gap-4 pb-8">
      <Transition>Propojení s gitem</Transition>
      <Transition class="pl-6">staged, changed, since</Transition>
    </div>

    <div class="grid gap-4 pb-8">
      <Transition>Různé příkazy pro CLI</Transition>
      <Transition class="pl-6">check, lint, format (--write)</Transition>
      <Transition class="pl-6">ci</Transition>
      <Transition class="pl-6">migrate</Transition>
      <Transition class="pl-6">search</Transition>
      <Transition class="pl-6">explain</Transition>
    </div>
  </div>
</MainContent>
