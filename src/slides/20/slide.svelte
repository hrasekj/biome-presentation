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

<MainContent title="Co je Biome">
  <div class="flex flex-col gap-10 text-left">
    <div class="w-full pb-16"></div>

    <div class="grid gap-6">
      <Transition>Biome is a performant toolchain for web projects</Transition>
      <Transition>JavaScript, TypeScript, JSX, TSX, JSON, CSS a GraphQL</Transition>
    </div>

    <div class="grid gap-4">
      <Transition>Formatter</Transition>
      <Transition class="pl-6">97% compatibilní s Prettier</Transition>
      <Transition class="pl-6">~25x rychlejší</Transition>
    </div>

    <div class="grid gap-4">
      <Transition>Linter</Transition>
      <Transition class="pl-6">291 pravidly</Transition>
      <Transition class="pl-6">~15x rychlejší</Transition>
    </div>
  </div>
</MainContent>
