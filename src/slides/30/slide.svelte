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

<MainContent title="Historie">
  <div class="flex flex-col gap-10 text-left">
    <!-- <div class="w-full pb-16"></div> -->

    <div class="grid gap-4">
      <Transition>únor 2020</Transition>
      <Transition class="pl-6">Initial commit - <strong>Rome</strong></Transition>
      <Transition class="pl-6">All in one toolchain (compiler, linter, formatter, bundler, testing)</Transition>
      <Transition class="pl-6">Sebastian McKenzie, autor Babel a Yarn</Transition>
      <Transition class="pl-6">React Native team ve Facebooku</Transition>
    </div>

    <div class="grid gap-4">
      <Transition>září 2021</Transition>
      <Transition class="pl-6">Přechod na Rust</Transition>
    </div>

    <div class="grid gap-4">
      <Transition>srpen 2023</Transition>
      <Transition class="pl-6">Emanuele Stoppa</Transition>
      <Transition class="pl-6">Přejmenovává projekt na Biome</Transition>
      <Transition class="pl-6">Oficiálně vydává verzi 1.0.0</Transition>
    </div>

    <div class="grid gap-4">
      <Transition>září 2023</Transition>
      <Transition class="pl-6">Vyhlášení Prettier challenge</Transition>
    </div>
  </div>
</MainContent>
