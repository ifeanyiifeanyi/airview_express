<x-app-layout>
    @section('title', ucwords($visa_requirements->visa_name))
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-teal-800 leading-tight">
            {{ __('Latest Visa Offers') }}
        </h2>
    </x-slot>

    <div class="px-5 py-4">
        <div class="max-w-7xl mx-auto py-10 sm:px-4 lg:px-8">
            <h1 class="mb-10 text-3xl ml-10 mx-auto">Requirements & Detail<span style="color:teal"></span></h1>
           
                @if ($visa_requirements->university_name != NULL)
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto"> 
                    {{ ucwords($visa_requirements->university_name) }}
                </small><br>
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto"> 
                    Program: {{ ucwords($visa_requirements->degree_program) }}
                </small><br>
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto"> 
                    Type: {{ ucwords($visa_requirements->degree_type) }}
                </small><br>
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto"> 
                    Program: {{ ucwords($visa_requirements->degree_program) }}
                </small><br><br>
                @else
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto">
                   Company: {{ ucwords($visa_requirements->employer_name) }}
                </small>   <br>
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto">
                   JoB Title: {{ ucwords($visa_requirements->job_title) }}
                </small>   <br>
                <small class="mb-10 text-1xl text-blue-500 ml-10 mx-auto">
                   Address: {{ ucwords($visa_requirements->employer_address) }}
                </small>   <br>
                @endif
            
        

            <div class="flex flex-wrap -mx-2">
                @foreach ($visa_requirements as $key => $visa)
                @if($visa === NULL || $key !== $visa )
                @continue
                @endif
                <div class="w-full sm:w-1/2 md:w-1/3 lg:w-1/4 xl:w-1/5 px-2 mb-4 sm:mb-0 xl:mb-10">
                    <div class="bg-white rounded-lg shadow-lg p-4 sm:p-6 mb-6 h-full">
                        <label class="flex items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 ml-2 text-green-900"
                                viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd"
                                    d="M16.707 3.293a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-1.414 0l-4-4a1 1 0 1 1 1.414-1.414L7 11.586l8.293-8.293a1 1 0 0 1 1.414 0z" />
                            </svg>
                            <div class="ml-2">
                                <p class="text-lg font-bold mb-1 sm:mb-2">
                                @if ($key === 'dob')
                                    <h6 class="text-teal-400 mb-2">{{ ucwords(Str::replace("_", " ",$visa)) }}</h6>
                                <p>Date of Birth: </p>
                                @elseif ($key === 'pob')
                                <h6 class="text-teal-400 mb-2">{{ ucwords(Str::replace("_", " ",$visa)) }}</h6>
                                <p>Place of Birth: </p>
                                @elseif ($key === 'family_dob')
                                <h6 class="text-teal-400 mb-2">{{ ucwords(Str::replace("_", " ",$visa)) }}</h6>
                                <p>Place of Birth (Family Member): </p>
                                @elseif ($key === 'amount')
                                <h6 class="text-teal-400 mb-2">Process Fee</h6>
                                <p>$ {{ ucwords(Str::replace("_", " ",$visa)) }} </p>
                                @else

                                <h6 class="text-teal-400 mb-2">{{ ucwords(Str::replace("_", " ",$key)) }}</h6>
                                <hr>
                                <p>{{ ucwords(Str::replace("_", " ",$visa)) }}</p>
                                @endif
                                </p>

                            </div>
                        </label>
                    </div>
                </div>
                @endforeach
                <hr>
                <p>

                </p>
                <p class="px-5">{{ Str::ucfirst($visa_requirements->description) }}</p>
                <hr>
                <p class="mt-10">
                    <a style="text-align:center" href="{{ route('visa.offers.apply', $visa_requirements->uuid) }}"
                        class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-md flex items-center gap-2 text-center">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-6 h-6">
                            <path
                                d="M10 2.5a7.5 7.5 0 0 0-7.5 7.5c0 3.033 1.813 5.604 4.404 6.729L6 18.5v-3.458C3.872 14.403 2.5 12.167 2.5 9.999A7.5 7.5 0 0 1 10 2.5zm4.667 8.556l-.786.787L12 11.048V7.5h-.5a.5.5 0 0 0-.5.5v4.048l-1.88-1.88-.786.787 2.667 2.667a.5.5 0 0 0 .707 0l2.667-2.667z" />
                        </svg>
                        Apply now!
                    </a>


                </p>
            </div>


        </div>
</x-app-layout>