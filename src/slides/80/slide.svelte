<script module>
  import { defineProps } from '@animotion/core'
  import langSup from '$lib/assets/language-support.png'

  export const props = defineProps({
    class: 'h-full pt-44 pb-24 px-24',
  })
</script>

<script lang="ts">
  import MainContent from '$lib/components/MainContent.svelte'
  import { Transition } from '@animotion/core'
</script>

<MainContent title="Co neumí">
  <div class="flex">
    <div class="flex flex-1 flex-col gap-10 text-left">
      <div class="w-full pb-12"></div>

      <div class="grid gap-4 pb-8">
        <Transition>Plugin systém</Transition>
        <Transition class="pl-6">probíhá diskuze na githubu</Transition>
      </div>

      <div class="grid gap-4 pb-8">
        <Transition>Type-aware lint rules</Transition>
        <Transition class="pl-6">Nekontroluje kód pomocí TS</Transition>
        <Transition class="pl-6">no-floating-promises</Transition>
      </div>
    </div>
    <Transition class="flex-1 py-10">
      <img alt="language support" src={langSup} />
    </Transition>
  </div>
</MainContent>
