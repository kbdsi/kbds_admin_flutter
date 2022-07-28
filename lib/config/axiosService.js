import axios from 'axios';
import serviceUrl from './serviceurl';

const axiosService = {
  fetchAllCountry: () =>
    axios({
      method: 'post',
      url: serviceUrl.country.search,
      data: {
        header: {
          request_id: '1',
          user_id: '2',
          request_date: '2022-03-25 09:09:09.000',
          screen_code: 'MT_0002R',
        },
        body: {
          body_request: {
            search_by: 'CODE',
            search_criteria: '',
          },
        },
      },
    }),
  getCountry: itemCode =>
    axios({
      method: 'post',
      url: serviceUrl.country.get,
      data: {
        header: {
          request_id: '1',
          user_id: '2',
          request_date: '2022-03-25 09:09:09.000',
          screen_code: 'MT_0002R',
        },
        body: {
          body_request: {
            search_by: 'CODE',
            search_criteria: itemCode,
          },
        },
      },
    }),

  // country_language_maps: [
  //     {
  //       mt_country_language_id: 'FR-fr',
  //       language_code: 'FR',
  //       language_name: 'FRANCE',
  //       enable: true,
  //     },
  //     {
  //       mt_country_language_id: 'FR-en',
  //       language_code: 'AS',
  //       language_name: 'MAMA RIKA',
  //       enable: true,
  //     },
  //   ],
  // host_maps: [
  //     {
  //       mt_host_code: 'BI',
  //       host_code: '002',
  //     },
  //   ],

  addCountry: (itemCode, itemName, countryLanguageMaps, hostMaps) =>
    axios.post(serviceUrl.country.add, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0002C',
      },
      body: {
        body_request: {
          entitys: [
            {
              code: itemCode,
              name: itemName,
              country_language_maps: countryLanguageMaps,
              host_maps: hostMaps,
            },
          ],
        },
      },
    }),

  deleteCountry: itemCode =>
    axios.post(serviceUrl.country.delete, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0002D',
      },

      body: {
        body_request: {
          entitys: [
            {
              code: itemCode,
              // name: 'UNITED OF AMERICA2',
              // country_language_maps: [
              //   {
              //     mt_country_language_id: 'ID-id',
              //     language_code: 'US',
              //     language_name: 'AMERIKA SERIKAT2',
              //     enable: true,
              //   },
              //   {
              //     mt_country_language_id: 'ID-en',
              //     language_code: 'AS',
              //     language_name: 'MAMA RIKA2',
              //     enable: true,
              //   },
              // ],
              // host_maps: [
              //   {
              //     mt_host_code: 'BI',
              //     host_code: '0022',
              //   },
              // ],
            },
          ],
        },
      },
    }),

  searchProvince: (countryCode, itemCode = '') =>
    axios({
      method: 'post',
      url: serviceUrl.province.search,
      data: {
        header: {
          request_id: '1',
          user_id: '2',
          request_date: '2022-03-25 09:09:09.000',
          screen_code: 'MT_0003R',
        },
        body: {
          body_request: {
            search_by: 'CODE',
            search_criteria: itemCode,
            country_id: countryCode,
          },
        },
      },
    }),
  getProvince: itemCode =>
    axios.post(serviceUrl.province.get, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0003R',
      },
      body: {
        body_request: {
          search_by: 'CODE',
          search_criteria: itemCode,
        },
      },
    }),

  deleteProvince: itemCode =>
    axios.post(serviceUrl.province.delete, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0003D',
      },
      body: {
        body_request: {
          entitys: [
            {
              code: itemCode,
              // name: 'BANDUNG',
              // mt_country_id: 'ID',
              // description: 'jawa barat',
            },
          ],
        },
      },
    }),

  searchCity: (provinceCode, itemCode = '') =>
    axios.post(serviceUrl.city.search, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0004R',
      },
      body: {
        body_request: {
          search_by: 'CODE',
          search_criteria: itemCode,
          province_id: provinceCode,
        },
      },
    }),
  getCity: itemCode =>
    axios.post(serviceUrl.city.get, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0004R',
      },
      body: {
        body_request: {
          search_by: 'CODE',
          search_criteria: itemCode,
        },
      },
    }),
  addCity: (code, name, description, provinceId) =>
    axios.post(serviceUrl.city.add, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0004C',
      },
      body: {
        body_request: {
          entitys: [
            {
              code: code,
              name: name,
              description: description,
              mt_province_id: provinceId,
            },
          ],
        },
      },
    }),

  deleteCity: itemCode =>
    axios.post(serviceUrl.city.delete, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0004D',
      },
      body: {
        body_request: {
          entitys: [
            {
              code: itemCode,
              // name: 'BANDUNG',
              // mt_province_id: 'xxx',
              // description: 'jawa barat',
            },
          ],
        },
      },
    }),
  updateCity: (code, name, description, countryId) =>
    axios.post(serviceUrl.city.update, {
      header: {
        request_id: '1',
        user_id: '2',
        request_date: '2022-03-25 09:09:09.000',
        screen_code: 'MT_0004U',
      },
      body: {
        body_request: {
          entitys: [
            {
              code: code,
              name: name,
              description: description,
              mt_country_id: countryId,
            },
          ],
        },
      },
    }),

  searchDistrict: () => axios.post(serviceUrl.district.search),
};

export default axiosService;
