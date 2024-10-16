<script module>
  import { defineProps } from '@animotion/core'

  export const props = defineProps({
    class: 'h-full pt-44 pb-24 px-24',
  })
</script>

<script lang="ts">
  import MainContent from '$lib/components/MainContent.svelte'
  import { Transition } from '@animotion/core'

  import antDesign from '$lib/assets/ant-design.svg'
  import sentry from '$lib/assets/sentry.svg'
  import refine from '$lib/assets/refine.svg'
  import apify from '$lib/assets/apify.svg'

  const projects = [
    {
      name: 'Ant Design',
      logo: antDesign,
    },
    {
      name: '',
      logo: 'https://astro.build/assets/press/astro-logo-light-gradient.svg',
    },
    {
      name: '',
      logo: sentry,
    },
    {
      name: '',
      logo: apify,
    },
    {
      name: '',
      logo: 'https://www.pulumi.com/images/logo/logo-on-white.svg',
    },
    {
      name: 'daisyUI',
      logo: 'https://img.daisyui.com/images/daisyui-logo/daisyui-logomark.svg',
    },
    {
      name: '',
      logo: 'https://cdn.prod.website-files.com/6257adef93867e50d84d30e2/6257d23c5fb25be7e0b6e220_Open%20Source%20Projects%20_%20Discord-7.svg',
    },
    {
      name: '',
      logo: refine,
    },
    {
      name: '',
      logo: 'https://assets.rspack.dev/rspack/navbar-logo-dark.png',
    },
  ]
</script>

<MainContent title="Trendy">
  <Transition>
    <div class="w-full pb-16"></div>
    <div class="grid h-full grid-cols-3 gap-4 text-left">
      {#each projects as project}
        <div class="flex h-20 items-center gap-2">
          <img alt="" src={project.logo} class="h-full w-auto" />
          {project.name}
        </div>
      {/each}
    </div>
  </Transition>
</MainContent>
