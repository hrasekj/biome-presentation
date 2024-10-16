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
      <Transition>Skoro 300 pravidel linteru</Transition>
      <Transition class="pl-6">Vlastní tvorba, převzaté z eslinu nebo jiných zdrojů</Transition>
      <Transition class="pl-6">Umožňuje automatické opravy (safe/unsafe)</Transition>
    </div>

    <div class="grid gap-4 pb-8">
      <Transition>Podporu pro IDE - LSP</Transition>
      <Transition class="pl-6">VSCode, IntelliJ, Zed</Transition>
      <Transition class="pl-6">
        <img alt="third-party extensions" src={thrirdPartyExt} />
      </Transition>
    </div>
  </div>
</MainContent>
