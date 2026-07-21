---
Title: ICE Route-Level Page Boilerplate
Description: ICE-pattern template for a new top-level route page - Page wrapper, responsive header, selector-derived data, and explicit loading/error states (not a blank return-null while loading)
Tags:
  - ice
  - react
  - rtk-query
  - mui
  - typescript
---

```tsx
import * as React from 'react';
import { Page, useSnackbar } from '@icerepository/ice-online-apollo-commons-ui';
import { Button, Stack, Typography } from '@mui/material';
import { MAX_VIEW_HEIGHT } from '../../common/types';
import useAppSelector from '../../common/hooks/useAppSelector';
import { useGetThingQuery } from './thing.api';
import { selectThing } from './thingSelectors';

export const ThingView: React.FC = () => {
  const { data, isLoading, isFetching, isError, error } = useGetThingQuery();
  const thing = useAppSelector((state) => selectThing(state, data));

  useSnackbar(isError, error?.message ?? 'Error loading thing', {
    variant: 'error',
    autoHideDuration: 5000,
  });

  // Explicit loading/error states instead of `if (!thing) return null` -
  // an early blank return leaves the page shell unpainted with no feedback.
  if (isLoading || isFetching) {
    return (
      <Page title="Thing" height={MAX_VIEW_HEIGHT}>
        {/* loading skeleton/spinner here */}
      </Page>
    );
  }

  if (isError) {
    return (
      <Page title="Thing" height={MAX_VIEW_HEIGHT}>
        {/* dedicated error state here, not a silently empty page */}
      </Page>
    );
  }

  return (
    <Page title="Thing" height={MAX_VIEW_HEIGHT} display="flex" flexDirection="column">
      <Stack spacing={1.5} alignItems="flex-start" mb={2}>
        <Stack
          flexDirection={{ xs: 'column', sm: 'row' }}
          alignItems={{ xs: 'flex-start', sm: 'center' }}
          justifyContent="space-between"
          sx={{ width: '100%' }}
          spacing={{ xs: 1, sm: 0 }}
        >
          <Typography variant="h4" mb={0}>
            Thing
          </Typography>
          <Button variant="contained">Primary action</Button>
        </Stack>
        <Typography variant="body2" color="text.secondary">
          One-line description of what this page is for.
        </Typography>
      </Stack>

      {/* page content, built from `thing`, not raw `data` */}
    </Page>
  );
};
```
